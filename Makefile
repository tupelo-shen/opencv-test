
CXX			= g++
CFLAGS 		= -Wall 
LDFLAGS 	= `pkg-config --cflags --libs opencv`
SRCS 		= $(wildcard *.cpp)
TARGETS 	= $(patsubst %.cpp, %, $(SRCS))

all:$(TARGETS)
	@bash --norc -c "date '+%Y%m%d %H:%M %S'"
	@echo finished of making Extutable file.

$(TARGETS):$(SRCS)
	$(CXX) -o $@ $< $(LDFLAGS) $(CFLAGS)

clean:
	-rm -rf $(TARGETS) *~ .*swp

.PHONY: clean all
