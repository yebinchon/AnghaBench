
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int curl_socket_t ;
struct TYPE_9__ {int multi; } ;
struct TYPE_8__ {TYPE_2__* global; } ;
typedef TYPE_1__ SockInfo ;
typedef TYPE_2__ GlobalInfo ;
typedef int CURL ;


 TYPE_1__* calloc (int,int) ;
 int curl_multi_assign (int ,int ,TYPE_1__*) ;
 int setsock (TYPE_1__*,int ,int *,int,TYPE_2__*) ;

__attribute__((used)) static void addsock(curl_socket_t s, CURL *easy, int action, GlobalInfo *g)
{
  SockInfo *fdp = calloc(sizeof(SockInfo), 1);

  fdp->global = g;
  setsock(fdp, s, easy, action, g);
  curl_multi_assign(g->multi, s, fdp);
}
