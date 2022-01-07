
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {scalar_t__ sb_cc; int sb_mb; } ;
struct socket {TYPE_1__ so_rcv; struct flow_divert_pcb* so_fd_pcb; void* so_proto; int so_flags; } ;
struct inpcb {struct ifnet* inp_last_outifp; } ;
struct ifnet {int dummy; } ;
struct flow_divert_pcb {int flags; struct socket* so; } ;
struct flow_divert_group {int dummy; } ;
typedef int * mbuf_t ;
typedef int errno_t ;


 int ENOENT ;
 int FDLOCK (struct flow_divert_pcb*) ;
 int FDLOG (int ,int *,char*,size_t) ;
 int FDRELEASE (struct flow_divert_pcb*) ;
 int FDUNLOCK (struct flow_divert_pcb*) ;
 int FLOW_DIVERT_TRANSFERRED ;
 int IPPROTO_TCP ;
 int IPPROTO_UDP ;
 int LOG_INFO ;
 int MBUF_DONTWAIT ;
 scalar_t__ SOCK_DGRAM ;
 int SOCK_DOM (struct socket*) ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (struct socket*) ;
 int SOF_FLOW_DIVERT ;
 int VERIFY (int ) ;
 int flow_divert_disconnect_socket (struct socket*) ;
 struct flow_divert_pcb* flow_divert_pcb_lookup (size_t,struct flow_divert_group*) ;
 int flow_divert_set_protosw (struct socket*) ;
 scalar_t__ g_active_group_count ;
 int g_flow_divert_group_lck ;
 struct flow_divert_group** g_flow_divert_groups ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_shared (int *) ;
 int mbuf_dup (int ,int ,int **) ;
 int nil_pcb ;
 void* pffindproto (int ,int ,scalar_t__) ;
 scalar_t__ sbappendstream (TYPE_1__*,int *) ;
 int sbflush (TYPE_1__*) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int sorwakeup (struct socket*) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static errno_t
flow_divert_attach(struct socket *so, uint32_t flow_id, uint32_t ctl_unit)
{
 int error = 0;
 struct flow_divert_pcb *fd_cb = ((void*)0);
 struct ifnet *ifp = ((void*)0);
 struct inpcb *inp = ((void*)0);
 struct socket *old_so;
 mbuf_t recv_data = ((void*)0);

 socket_unlock(so, 0);

 FDLOG(LOG_INFO, &nil_pcb, "Attaching socket to flow %u", flow_id);


 lck_rw_lock_shared(&g_flow_divert_group_lck);
 if (g_flow_divert_groups != ((void*)0) && g_active_group_count > 0) {
  struct flow_divert_group *group = g_flow_divert_groups[ctl_unit];
  if (group != ((void*)0)) {
   fd_cb = flow_divert_pcb_lookup(flow_id, group);
  }
 }
 lck_rw_done(&g_flow_divert_group_lck);

 if (fd_cb == ((void*)0)) {
  error = ENOENT;
  goto done;
 }

 FDLOCK(fd_cb);


 old_so = fd_cb->so;

 inp = sotoinpcb(old_so);

 VERIFY(inp != ((void*)0));

 socket_lock(old_so, 0);
 flow_divert_disconnect_socket(old_so);
 old_so->so_flags &= ~SOF_FLOW_DIVERT;
 old_so->so_fd_pcb = ((void*)0);
 if (SOCK_TYPE(old_so) == SOCK_STREAM) {
  old_so->so_proto = pffindproto(SOCK_DOM(old_so), IPPROTO_TCP, SOCK_STREAM);
 } else if (SOCK_TYPE(old_so) == SOCK_DGRAM) {
  old_so->so_proto = pffindproto(SOCK_DOM(old_so), IPPROTO_UDP, SOCK_DGRAM);
 }
 fd_cb->so = ((void*)0);

 ifp = inp->inp_last_outifp;
 if (old_so->so_rcv.sb_cc > 0) {
  error = mbuf_dup(old_so->so_rcv.sb_mb, MBUF_DONTWAIT, &recv_data);
  sbflush(&old_so->so_rcv);
 }
 socket_unlock(old_so, 0);


 socket_lock(so, 0);
 so->so_fd_pcb = fd_cb;
 inp = sotoinpcb(so);
 inp->inp_last_outifp = ifp;
 if (recv_data != ((void*)0)) {
  if (sbappendstream(&so->so_rcv, recv_data)) {
   sorwakeup(so);
  }
 }
 flow_divert_set_protosw(so);
 socket_unlock(so, 0);

 fd_cb->so = so;
 fd_cb->flags |= FLOW_DIVERT_TRANSFERRED;

 FDUNLOCK(fd_cb);

done:
 socket_lock(so, 0);

 if (fd_cb != ((void*)0)) {
  FDRELEASE(fd_cb);
 }

 return error;
}
