
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* data; } ;
struct TYPE_9__ {TYPE_2__* data; } ;
struct TYPE_10__ {int multi; int loop; TYPE_1__ fifo_event; TYPE_7__ timer_event; } ;
typedef TYPE_2__ GlobalInfo ;


 int CURLMOPT_SOCKETDATA ;
 int CURLMOPT_SOCKETFUNCTION ;
 int CURLMOPT_TIMERDATA ;
 int CURLMOPT_TIMERFUNCTION ;
 int curl_multi_cleanup (int ) ;
 int curl_multi_init () ;
 int curl_multi_setopt (int ,int ,TYPE_2__*) ;
 int ev_default_loop (int ) ;
 int ev_loop (int ,int ) ;
 int ev_timer_init (TYPE_7__*,int ,int,int) ;
 int init_fifo (TYPE_2__*) ;
 int memset (TYPE_2__*,int ,int) ;
 TYPE_2__* multi_timer_cb ;
 TYPE_2__* sock_cb ;
 int timer_cb ;

int main(int argc, char **argv)
{
  GlobalInfo g;
  (void)argc;
  (void)argv;

  memset(&g, 0, sizeof(GlobalInfo));
  g.loop = ev_default_loop(0);

  init_fifo(&g);
  g.multi = curl_multi_init();

  ev_timer_init(&g.timer_event, timer_cb, 0., 0.);
  g.timer_event.data = &g;
  g.fifo_event.data = &g;
  curl_multi_setopt(g.multi, CURLMOPT_SOCKETFUNCTION, sock_cb);
  curl_multi_setopt(g.multi, CURLMOPT_SOCKETDATA, &g);
  curl_multi_setopt(g.multi, CURLMOPT_TIMERFUNCTION, multi_timer_cb);
  curl_multi_setopt(g.multi, CURLMOPT_TIMERDATA, &g);




  ev_loop(g.loop, 0);
  curl_multi_cleanup(g.multi);
  return 0;
}
