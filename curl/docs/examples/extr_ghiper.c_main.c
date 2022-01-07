
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int multi; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int GMainLoop ;
typedef int GIOChannel ;


 int CURLMOPT_SOCKETDATA ;
 int CURLMOPT_SOCKETFUNCTION ;
 int CURLMOPT_TIMERDATA ;
 int CURLMOPT_TIMERFUNCTION ;
 int FALSE ;
 int G_IO_IN ;
 int curl_multi_cleanup (int ) ;
 int curl_multi_init () ;
 int curl_multi_setopt (int ,int ,TYPE_1__*) ;
 int fifo_cb ;
 int g_io_add_watch (int *,int ,int ,TYPE_1__*) ;
 int * g_io_channel_unix_new (int) ;
 int * g_main_loop_new (int *,int ) ;
 int g_main_loop_run (int *) ;
 TYPE_1__* g_malloc0 (int) ;
 int init_fifo () ;
 TYPE_1__* sock_cb ;
 TYPE_1__* update_timeout_cb ;

int main(int argc, char **argv)
{
  GlobalInfo *g;
  GMainLoop*gmain;
  int fd;
  GIOChannel* ch;
  g = g_malloc0(sizeof(GlobalInfo));

  fd = init_fifo();
  ch = g_io_channel_unix_new(fd);
  g_io_add_watch(ch, G_IO_IN, fifo_cb, g);
  gmain = g_main_loop_new(((void*)0), FALSE);
  g->multi = curl_multi_init();
  curl_multi_setopt(g->multi, CURLMOPT_SOCKETFUNCTION, sock_cb);
  curl_multi_setopt(g->multi, CURLMOPT_SOCKETDATA, g);
  curl_multi_setopt(g->multi, CURLMOPT_TIMERFUNCTION, update_timeout_cb);
  curl_multi_setopt(g->multi, CURLMOPT_TIMERDATA, g);




  g_main_loop_run(gmain);
  curl_multi_cleanup(g->multi);
  return 0;
}
