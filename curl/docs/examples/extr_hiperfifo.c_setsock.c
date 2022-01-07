
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int curl_socket_t ;
struct TYPE_7__ {int evbase; } ;
struct TYPE_6__ {int action; int ev; int sockfd; int * easy; } ;
typedef TYPE_1__ SockInfo ;
typedef TYPE_2__ GlobalInfo ;
typedef int CURL ;


 int CURL_POLL_IN ;
 int CURL_POLL_OUT ;
 int EV_PERSIST ;
 int EV_READ ;
 int EV_WRITE ;
 int event_add (int *,int *) ;
 int event_assign (int *,int ,int ,int,int ,TYPE_2__*) ;
 int event_cb ;
 int event_del (int *) ;

__attribute__((used)) static void setsock(SockInfo *f, curl_socket_t s, CURL *e, int act,
                    GlobalInfo *g)
{
  int kind =
     ((act & CURL_POLL_IN) ? EV_READ : 0) |
     ((act & CURL_POLL_OUT) ? EV_WRITE : 0) | EV_PERSIST;

  f->sockfd = s;
  f->action = act;
  f->easy = e;
  event_del(&f->ev);
  event_assign(&f->ev, g->evbase, f->sockfd, kind, event_cb, g);
  event_add(&f->ev, ((void*)0));
}
