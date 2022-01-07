
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gpointer ;
typedef int gboolean ;
struct TYPE_3__ {scalar_t__ timer_event; scalar_t__ still_running; int multi; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int GIOCondition ;
typedef int GIOChannel ;
typedef int CURLMcode ;


 int CURL_CSELECT_IN ;
 int CURL_CSELECT_OUT ;
 int FALSE ;
 int G_IO_IN ;
 int G_IO_OUT ;
 int MSG_OUT (char*) ;
 int TRUE ;
 int check_multi_info (TYPE_1__*) ;
 int curl_multi_socket_action (int ,int,int,scalar_t__*) ;
 int g_io_channel_unix_get_fd (int *) ;
 int g_source_remove (scalar_t__) ;
 int mcode_or_die (char*,int ) ;

__attribute__((used)) static gboolean event_cb(GIOChannel *ch, GIOCondition condition, gpointer data)
{
  GlobalInfo *g = (GlobalInfo*) data;
  CURLMcode rc;
  int fd = g_io_channel_unix_get_fd(ch);

  int action =
    ((condition & G_IO_IN) ? CURL_CSELECT_IN : 0) |
    ((condition & G_IO_OUT) ? CURL_CSELECT_OUT : 0);

  rc = curl_multi_socket_action(g->multi, fd, action, &g->still_running);
  mcode_or_die("event_cb: curl_multi_socket_action", rc);

  check_multi_info(g);
  if(g->still_running) {
    return TRUE;
  }
  else {
    MSG_OUT("last transfer done, kill timeout\n");
    if(g->timer_event) {
      g_source_remove(g->timer_event);
    }
    return FALSE;
  }
}
