#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int stopped; scalar_t__ still_running; int /*<<< orphan*/  evbase; int /*<<< orphan*/  input; } ;
typedef  TYPE_1__ GlobalInfo ;

/* Variables and functions */
 long EOF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 long FUNC1 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(int fd, short event, void *arg)
{
  char s[1024];
  long int rv = 0;
  int n = 0;
  GlobalInfo *g = (GlobalInfo *)arg;
  (void)fd;
  (void)event;

  do {
    s[0]='\0';
    rv = FUNC1(g->input, "%1023s%n", s, &n);
    s[n]='\0';
    if(n && s[0]) {
      if(!FUNC3(s, "stop")) {
        g->stopped = 1;
        if(g->still_running == 0)
          FUNC0(g->evbase);
      }
      else
        FUNC2(s, arg);  /* if we read a URL, go get it! */
    }
    else
      break;
  } while(rv != EOF);
}