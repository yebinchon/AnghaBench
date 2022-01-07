
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ still_running; int timer_event; int multi; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int CURLMcode ;


 int CURL_CSELECT_IN ;
 int CURL_CSELECT_OUT ;
 short EV_READ ;
 short EV_WRITE ;
 int MSG_OUT ;
 int check_multi_info (TYPE_1__*) ;
 int curl_multi_socket_action (int ,int,int,scalar_t__*) ;
 int evtimer_del (int *) ;
 scalar_t__ evtimer_pending (int *,int *) ;
 int fprintf (int ,char*) ;
 int mcode_or_die (char*,int ) ;

__attribute__((used)) static void event_cb(int fd, short kind, void *userp)
{
  GlobalInfo *g = (GlobalInfo*) userp;
  CURLMcode rc;

  int action =
    ((kind & EV_READ) ? CURL_CSELECT_IN : 0) |
    ((kind & EV_WRITE) ? CURL_CSELECT_OUT : 0);

  rc = curl_multi_socket_action(g->multi, fd, action, &g->still_running);
  mcode_or_die("event_cb: curl_multi_socket_action", rc);

  check_multi_info(g);
  if(g->still_running <= 0) {
    fprintf(MSG_OUT, "last transfer done, kill timeout\n");
    if(evtimer_pending(&g->timer_event, ((void*)0))) {
      evtimer_del(&g->timer_event);
    }
  }
}
