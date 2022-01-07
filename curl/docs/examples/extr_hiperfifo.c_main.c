
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int multi; int evbase; int timer_event; } ;
typedef TYPE_1__ GlobalInfo ;


 int CURLMOPT_SOCKETDATA ;
 int CURLMOPT_SOCKETFUNCTION ;
 int CURLMOPT_TIMERDATA ;
 int CURLMOPT_TIMERFUNCTION ;
 int clean_fifo (TYPE_1__*) ;
 int curl_multi_cleanup (int ) ;
 int curl_multi_init () ;
 int curl_multi_setopt (int ,int ,TYPE_1__*) ;
 int event_base_dispatch (int ) ;
 int event_base_free (int ) ;
 int event_base_new () ;
 int event_del (int *) ;
 int evtimer_assign (int *,int ,int ,TYPE_1__*) ;
 int init_fifo (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* multi_timer_cb ;
 TYPE_1__* sock_cb ;
 int timer_cb ;

int main(int argc, char **argv)
{
  GlobalInfo g;
  (void)argc;
  (void)argv;

  memset(&g, 0, sizeof(GlobalInfo));
  g.evbase = event_base_new();
  init_fifo(&g);
  g.multi = curl_multi_init();
  evtimer_assign(&g.timer_event, g.evbase, timer_cb, &g);


  curl_multi_setopt(g.multi, CURLMOPT_SOCKETFUNCTION, sock_cb);
  curl_multi_setopt(g.multi, CURLMOPT_SOCKETDATA, &g);
  curl_multi_setopt(g.multi, CURLMOPT_TIMERFUNCTION, multi_timer_cb);
  curl_multi_setopt(g.multi, CURLMOPT_TIMERDATA, &g);




  event_base_dispatch(g.evbase);



  clean_fifo(&g);
  event_del(&g.timer_event);
  event_base_free(g.evbase);
  curl_multi_cleanup(g.multi);
  return 0;
}
