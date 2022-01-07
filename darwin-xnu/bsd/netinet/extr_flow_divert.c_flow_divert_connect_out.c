
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_flags; int so_error; int so_flags1; struct flow_divert_pcb* so_fd_pcb; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct inpcb {scalar_t__ inp_state; } ;
struct flow_divert_pcb {int flags; int * connect_packet; int so; int * remote_address; int * group; } ;
typedef int proc_t ;
typedef int * mbuf_t ;
typedef int errno_t ;


 scalar_t__ AF_INET ;
 int EAFNOSUPPORT ;
 int EALREADY ;
 int EINVAL ;
 int ENETUNREACH ;
 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 int FLOW_DIVERT_CONNECT_STARTED ;
 int FLOW_DIVERT_TRANSFERRED ;
 scalar_t__ INPCB_STATE_DEAD ;
 scalar_t__ IN_MULTICAST (int ) ;
 int LOG_ERR ;
 int LOG_INFO ;
 int SOF1_PRECONNECT_DATA ;
 int SOF_FLOW_DIVERT ;
 int TRUE ;
 int VERIFY (int) ;
 int flow_divert_create_connect_packet (struct flow_divert_pcb*,struct sockaddr*,struct socket*,int ,int **) ;
 int flow_divert_send_packet (struct flow_divert_pcb*,int *,int ) ;
 int mbuf_freem (int *) ;
 int ntohl (int ) ;
 int soisconnected (int ) ;
 int soisconnecting (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

errno_t
flow_divert_connect_out(struct socket *so, struct sockaddr *to, proc_t p)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
 int error = 0;
 struct inpcb *inp = sotoinpcb(so);
 struct sockaddr_in *sinp;
 mbuf_t connect_packet = ((void*)0);
 int do_send = 1;

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 if (fd_cb->group == ((void*)0)) {
  error = ENETUNREACH;
  goto done;
 }

 if (inp == ((void*)0)) {
  error = EINVAL;
  goto done;
 } else if (inp->inp_state == INPCB_STATE_DEAD) {
  if (so->so_error) {
   error = so->so_error;
   so->so_error = 0;
  } else {
   error = EINVAL;
  }
  goto done;
 }

 if ((fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED) && !(fd_cb->flags & FLOW_DIVERT_TRANSFERRED)) {
  error = EALREADY;
  goto done;
 }

 if (fd_cb->flags & FLOW_DIVERT_TRANSFERRED) {
  FDLOG0(LOG_INFO, fd_cb, "fully transferred");
  fd_cb->flags &= ~FLOW_DIVERT_TRANSFERRED;
  if (fd_cb->remote_address != ((void*)0)) {
   soisconnected(fd_cb->so);
   goto done;
  }
 }

 FDLOG0(LOG_INFO, fd_cb, "Connecting");

 if (fd_cb->connect_packet == ((void*)0)) {
  if (to == ((void*)0)) {
   FDLOG0(LOG_ERR, fd_cb, "No destination address available when creating connect packet");
   error = EINVAL;
   goto done;
  }

  sinp = (struct sockaddr_in *)(void *)to;
  if (sinp->sin_family == AF_INET && IN_MULTICAST(ntohl(sinp->sin_addr.s_addr))) {
   error = EAFNOSUPPORT;
   goto done;
  }

  error = flow_divert_create_connect_packet(fd_cb, to, so, p, &connect_packet);
  if (error) {
   goto done;
  }

  if (so->so_flags1 & SOF1_PRECONNECT_DATA) {
   FDLOG0(LOG_INFO, fd_cb, "Delaying sending the connect packet until send or receive");
   do_send = 0;
  }
 } else {
  FDLOG0(LOG_INFO, fd_cb, "Sending saved connect packet");
  connect_packet = fd_cb->connect_packet;
  fd_cb->connect_packet = ((void*)0);
 }

 if (do_send) {
  error = flow_divert_send_packet(fd_cb, connect_packet, TRUE);
  if (error) {
   goto done;
  }

  fd_cb->flags |= FLOW_DIVERT_CONNECT_STARTED;
 } else {
  fd_cb->connect_packet = connect_packet;
  connect_packet = ((void*)0);
 }

 soisconnecting(so);

done:
 if (error && connect_packet != ((void*)0)) {
  mbuf_freem(connect_packet);
 }
 return error;
}
