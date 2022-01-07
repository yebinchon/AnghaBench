
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int curl_socket_t ;
struct TYPE_9__ {int multi; } ;
struct TYPE_8__ {int ch; TYPE_2__* global; } ;
typedef TYPE_1__ SockInfo ;
typedef TYPE_2__ GlobalInfo ;
typedef int CURL ;


 int curl_multi_assign (int ,int ,TYPE_1__*) ;
 int g_io_channel_unix_new (int ) ;
 TYPE_1__* g_malloc0 (int) ;
 int setsock (TYPE_1__*,int ,int *,int,TYPE_2__*) ;

__attribute__((used)) static void addsock(curl_socket_t s, CURL *easy, int action, GlobalInfo *g)
{
  SockInfo *fdp = g_malloc0(sizeof(SockInfo));

  fdp->global = g;
  fdp->ch = g_io_channel_unix_new(s);
  setsock(fdp, s, easy, action, g);
  curl_multi_assign(g->multi, s, fdp);
}
