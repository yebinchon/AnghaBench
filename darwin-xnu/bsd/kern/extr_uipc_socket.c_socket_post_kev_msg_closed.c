
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {TYPE_2__* so_proto; } ;
struct sockaddr {int sa_len; } ;
struct TYPE_6__ {int kev_peername; int kev_sockname; } ;
struct kev_socket_closed {TYPE_3__ ev_data; } ;
typedef int ev ;
struct TYPE_5__ {TYPE_1__* pr_usrreqs; } ;
struct TYPE_4__ {int (* pru_sockaddr ) (struct socket*,struct sockaddr**) ;int (* pru_peeraddr ) (struct socket*,struct sockaddr**) ;} ;


 int FREE (struct sockaddr*,int ) ;
 int KEV_SOCKET_CLOSED ;
 int M_SONAME ;
 int bzero (struct kev_socket_closed*,int) ;
 int memcpy (int *,struct sockaddr*,int ) ;
 int min (int ,int) ;
 int socket_post_kev_msg (int ,TYPE_3__*,int) ;
 int stub1 (struct socket*,struct sockaddr**) ;
 int stub2 (struct socket*,struct sockaddr**) ;

void
socket_post_kev_msg_closed(struct socket *so)
{
 struct kev_socket_closed ev;
 struct sockaddr *socksa = ((void*)0), *peersa = ((void*)0);
 int err;
 bzero(&ev, sizeof(ev));
 err = (*so->so_proto->pr_usrreqs->pru_sockaddr)(so, &socksa);
 if (err == 0) {
  err = (*so->so_proto->pr_usrreqs->pru_peeraddr)(so,
      &peersa);
  if (err == 0) {
   memcpy(&ev.ev_data.kev_sockname, socksa,
       min(socksa->sa_len,
       sizeof (ev.ev_data.kev_sockname)));
   memcpy(&ev.ev_data.kev_peername, peersa,
       min(peersa->sa_len,
       sizeof (ev.ev_data.kev_peername)));
   socket_post_kev_msg(KEV_SOCKET_CLOSED,
       &ev.ev_data, sizeof (ev));
  }
 }
 if (socksa != ((void*)0))
  FREE(socksa, M_SONAME);
 if (peersa != ((void*)0))
  FREE(peersa, M_SONAME);
}
