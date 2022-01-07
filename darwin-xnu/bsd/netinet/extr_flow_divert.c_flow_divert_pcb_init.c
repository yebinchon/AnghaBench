
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct socket {int so_flags; struct flow_divert_pcb* so_fd_pcb; } ;
struct flow_divert_pcb {int control_group_unit; } ;
typedef scalar_t__ errno_t ;


 scalar_t__ EALREADY ;
 scalar_t__ ENOMEM ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,scalar_t__) ;
 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 int FDRELEASE (struct flow_divert_pcb*) ;
 int LOG_ERR ;
 int LOG_INFO ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (struct socket*) ;
 int SOF_FLOW_DIVERT ;
 struct flow_divert_pcb* flow_divert_pcb_create (struct socket*) ;
 scalar_t__ flow_divert_pcb_insert (struct flow_divert_pcb*,int ) ;
 int flow_divert_set_protosw (struct socket*) ;
 int flow_divert_set_udp_protosw (struct socket*) ;

errno_t
flow_divert_pcb_init(struct socket *so, uint32_t ctl_unit)
{
 errno_t error = 0;
 struct flow_divert_pcb *fd_cb;

 if (so->so_flags & SOF_FLOW_DIVERT) {
  return EALREADY;
 }

 fd_cb = flow_divert_pcb_create(so);
 if (fd_cb != ((void*)0)) {
  error = flow_divert_pcb_insert(fd_cb, ctl_unit);
  if (error) {
   FDLOG(LOG_ERR, fd_cb, "pcb insert failed: %d", error);
   FDRELEASE(fd_cb);
  } else {
   fd_cb->control_group_unit = ctl_unit;
   so->so_fd_pcb = fd_cb;

   if (SOCK_TYPE(so) == SOCK_STREAM) {
    flow_divert_set_protosw(so);
   } else if (SOCK_TYPE(so) == SOCK_DGRAM) {
    flow_divert_set_udp_protosw(so);
   }

   FDLOG0(LOG_INFO, fd_cb, "Created");
  }
 } else {
  error = ENOMEM;
 }

 return error;
}
