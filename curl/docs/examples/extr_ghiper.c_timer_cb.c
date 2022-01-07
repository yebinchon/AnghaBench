
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gpointer ;
typedef int gboolean ;
struct TYPE_3__ {int still_running; int multi; } ;
typedef TYPE_1__ GlobalInfo ;
typedef int CURLMcode ;


 int CURL_SOCKET_TIMEOUT ;
 int FALSE ;
 int check_multi_info (TYPE_1__*) ;
 int curl_multi_socket_action (int ,int ,int ,int *) ;
 int mcode_or_die (char*,int ) ;

__attribute__((used)) static gboolean timer_cb(gpointer data)
{
  GlobalInfo *g = (GlobalInfo *)data;
  CURLMcode rc;

  rc = curl_multi_socket_action(g->multi,
                                CURL_SOCKET_TIMEOUT, 0, &g->still_running);
  mcode_or_die("timer_cb: curl_multi_socket_action", rc);
  check_multi_info(g);
  return FALSE;
}
