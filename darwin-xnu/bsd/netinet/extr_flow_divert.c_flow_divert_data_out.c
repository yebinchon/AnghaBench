
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; int so_flags1; struct flow_divert_pcb* so_fd_pcb; } ;
struct sockaddr {int dummy; } ;
struct proc {int dummy; } ;
struct inpcb {scalar_t__ inp_state; } ;
struct flow_divert_pcb {int flags; int bytes_written_by_app; scalar_t__ send_window; } ;
typedef int * mbuf_t ;
typedef int errno_t ;


 int ECONNRESET ;
 int EINVAL ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,scalar_t__) ;
 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 int FLOW_DIVERT_CONNECT_STARTED ;
 scalar_t__ INPCB_STATE_DEAD ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int MSG_OOB ;
 int PRUS_EOF ;
 int SOF1_DATA_IDEMPOTENT ;
 int SOF_FLOW_DIVERT ;
 int VERIFY (int) ;
 scalar_t__ flow_divert_check_no_cellular (struct flow_divert_pcb*) ;
 scalar_t__ flow_divert_check_no_expensive (struct flow_divert_pcb*) ;
 int flow_divert_connect_out (struct socket*,struct sockaddr*,struct proc*) ;
 int flow_divert_send_app_data (struct flow_divert_pcb*,int *,struct sockaddr*) ;
 int flow_divert_shutdown (struct socket*) ;
 int mbuf_free (int *) ;
 int mbuf_freem (int *) ;
 scalar_t__ mbuf_len (int *) ;
 scalar_t__ mbuf_pkthdr_len (int *) ;
 struct inpcb* sotoinpcb (struct socket*) ;

__attribute__((used)) static errno_t
flow_divert_data_out(struct socket *so, int flags, mbuf_t data, struct sockaddr *to, mbuf_t control, struct proc *p)
{
 struct flow_divert_pcb *fd_cb = so->so_fd_pcb;
 int error = 0;
 struct inpcb *inp;

 VERIFY((so->so_flags & SOF_FLOW_DIVERT) && so->so_fd_pcb != ((void*)0));

 inp = sotoinpcb(so);
 if (inp == ((void*)0) || inp->inp_state == INPCB_STATE_DEAD) {
  error = ECONNRESET;
  goto done;
 }

 if (control && mbuf_len(control) > 0) {
  error = EINVAL;
  goto done;
 }

 if (flags & MSG_OOB) {
  error = EINVAL;
  goto done;
 }

 error = flow_divert_check_no_cellular(fd_cb) ||
     flow_divert_check_no_expensive(fd_cb);
 if (error) {
  goto done;
 }


 if (!(fd_cb->flags & FLOW_DIVERT_CONNECT_STARTED)) {
  FDLOG0(LOG_INFO, fd_cb, "implicit connect");
  error = flow_divert_connect_out(so, to, p);
  if (error) {
   goto done;
  }

  if (so->so_flags1 & SOF1_DATA_IDEMPOTENT) {

   fd_cb->send_window = mbuf_pkthdr_len(data);
  }
 }

 FDLOG(LOG_DEBUG, fd_cb, "app wrote %lu bytes", mbuf_pkthdr_len(data));

 fd_cb->bytes_written_by_app += mbuf_pkthdr_len(data);
 error = flow_divert_send_app_data(fd_cb, data, to);
 if (error) {
  goto done;
 }

 data = ((void*)0);

 if (flags & PRUS_EOF) {
  flow_divert_shutdown(so);
 }

done:
 if (data) {
  mbuf_freem(data);
 }
 if (control) {
  mbuf_free(control);
 }
 return error;
}
