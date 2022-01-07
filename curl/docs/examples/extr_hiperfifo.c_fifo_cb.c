
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int stopped; scalar_t__ still_running; int evbase; int input; } ;
typedef TYPE_1__ GlobalInfo ;


 long EOF ;
 int event_base_loopbreak (int ) ;
 long fscanf (int ,char*,char*,int*) ;
 int new_conn (char*,void*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void fifo_cb(int fd, short event, void *arg)
{
  char s[1024];
  long int rv = 0;
  int n = 0;
  GlobalInfo *g = (GlobalInfo *)arg;
  (void)fd;
  (void)event;

  do {
    s[0]='\0';
    rv = fscanf(g->input, "%1023s%n", s, &n);
    s[n]='\0';
    if(n && s[0]) {
      if(!strcmp(s, "stop")) {
        g->stopped = 1;
        if(g->still_running == 0)
          event_base_loopbreak(g->evbase);
      }
      else
        new_conn(s, arg);
    }
    else
      break;
  } while(rv != EOF);
}
