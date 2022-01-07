
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct flow_divert_pcb {size_t bytes_received; TYPE_3__* so; int sb_size; struct sockaddr* remote_address; } ;
typedef int remote_address ;
typedef int * mbuf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_13__ {int sb_cc; } ;
struct TYPE_12__ {int so_state; TYPE_6__ so_rcv; TYPE_2__* so_proto; } ;
struct TYPE_11__ {TYPE_1__* pr_domain; } ;
struct TYPE_10__ {int dom_family; } ;


 scalar_t__ FALSE ;
 int FDLOCK (struct flow_divert_pcb*) ;
 int FDLOG (int ,struct flow_divert_pcb*,char*,int) ;
 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 int FDUNLOCK (struct flow_divert_pcb*) ;
 int FLOW_DIVERT_TLV_REMOTE_ADDR ;
 int FREE (struct sockaddr*,int ) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_INFO ;
 int MBUF_DONTWAIT ;
 int M_TEMP ;
 int SHUT_RDWR ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (TYPE_3__*) ;
 int SS_CANTRCVMORE ;
 scalar_t__ TRUE ;
 int flow_divert_add_data_statistics (struct flow_divert_pcb*,size_t,scalar_t__) ;
 scalar_t__ flow_divert_check_no_cellular (struct flow_divert_pcb*) ;
 scalar_t__ flow_divert_check_no_expensive (struct flow_divert_pcb*) ;
 int flow_divert_disconnect_socket (TYPE_3__*) ;
 int flow_divert_dup_addr (int ,struct sockaddr*,struct sockaddr**) ;
 int * flow_divert_get_control_mbuf (struct flow_divert_pcb*) ;
 scalar_t__ flow_divert_is_sockaddr_valid (struct sockaddr*) ;
 int flow_divert_packet_get_tlv (int *,size_t,int ,int,struct sockaddr_storage*,int*) ;
 int flow_divert_send_close (struct flow_divert_pcb*,int ) ;
 int flow_divert_update_closed_state (struct flow_divert_pcb*,int ,scalar_t__) ;
 int mbuf_freem (int *) ;
 size_t mbuf_pkthdr_len (int *) ;
 int mbuf_split (int *,size_t,int ,int **) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 scalar_t__ sbappendaddr (TYPE_6__*,struct sockaddr*,int *,int *,int *) ;
 scalar_t__ sbappendstream (TYPE_6__*,int *) ;
 int socket_lock (TYPE_3__*,int ) ;
 int socket_unlock (TYPE_3__*,int ) ;
 int sorwakeup (TYPE_3__*) ;

__attribute__((used)) static void
flow_divert_handle_data(struct flow_divert_pcb *fd_cb, mbuf_t packet, size_t offset)
{
 FDLOCK(fd_cb);
 if (fd_cb->so != ((void*)0)) {
  int error = 0;
  mbuf_t data = ((void*)0);
  size_t data_size;
  struct sockaddr_storage remote_address;
  boolean_t got_remote_sa = FALSE;

  socket_lock(fd_cb->so, 0);

  if (SOCK_TYPE(fd_cb->so) == SOCK_DGRAM) {
   uint32_t val_size = 0;


   memset(&remote_address, 0, sizeof(remote_address));
   error = flow_divert_packet_get_tlv(packet, offset, FLOW_DIVERT_TLV_REMOTE_ADDR, sizeof(remote_address), &remote_address, &val_size);
   if (error || val_size > sizeof(remote_address)) {
    FDLOG0(LOG_INFO, fd_cb, "No remote address provided");
    error = 0;
   } else {

    if (flow_divert_is_sockaddr_valid((struct sockaddr *)&remote_address)) {
     got_remote_sa = TRUE;
    }
    offset += (sizeof(uint8_t) + sizeof(uint32_t) + val_size);
   }
  }

  data_size = (mbuf_pkthdr_len(packet) - offset);

  FDLOG(LOG_DEBUG, fd_cb, "received %lu bytes of data", data_size);

  error = mbuf_split(packet, offset, MBUF_DONTWAIT, &data);
  if (error || data == ((void*)0)) {
   FDLOG(LOG_ERR, fd_cb, "mbuf_split failed: %d", error);
  } else {
   if (flow_divert_check_no_cellular(fd_cb) ||
       flow_divert_check_no_expensive(fd_cb))
   {
    flow_divert_update_closed_state(fd_cb, SHUT_RDWR, TRUE);
    flow_divert_send_close(fd_cb, SHUT_RDWR);
    flow_divert_disconnect_socket(fd_cb->so);
   } else if (!(fd_cb->so->so_state & SS_CANTRCVMORE)) {
    if (SOCK_TYPE(fd_cb->so) == SOCK_STREAM) {
     if (sbappendstream(&fd_cb->so->so_rcv, data)) {
      fd_cb->bytes_received += data_size;
      flow_divert_add_data_statistics(fd_cb, data_size, FALSE);
      fd_cb->sb_size = fd_cb->so->so_rcv.sb_cc;
      sorwakeup(fd_cb->so);
      data = ((void*)0);
     } else {
      FDLOG0(LOG_ERR, fd_cb, "received data, but appendstream failed");
     }
    } else if (SOCK_TYPE(fd_cb->so) == SOCK_DGRAM) {
     struct sockaddr *append_sa;
     mbuf_t mctl;

     if (got_remote_sa == TRUE) {
      error = flow_divert_dup_addr(fd_cb->so->so_proto->pr_domain->dom_family,
        (struct sockaddr *)&remote_address, &append_sa);
     } else {
      error = flow_divert_dup_addr(fd_cb->so->so_proto->pr_domain->dom_family,
        fd_cb->remote_address, &append_sa);
     }
     if (error) {
      FDLOG0(LOG_ERR, fd_cb, "failed to dup the socket address.");
     }

     mctl = flow_divert_get_control_mbuf(fd_cb);
     if (sbappendaddr(&fd_cb->so->so_rcv, append_sa, data, mctl, ((void*)0))) {
      fd_cb->bytes_received += data_size;
      flow_divert_add_data_statistics(fd_cb, data_size, FALSE);
      fd_cb->sb_size = fd_cb->so->so_rcv.sb_cc;
      sorwakeup(fd_cb->so);
      data = ((void*)0);
     } else {
      FDLOG0(LOG_ERR, fd_cb, "received data, but sbappendaddr failed");
     }
     if (!error) {
      FREE(append_sa, M_TEMP);
     }
    }
   }
  }
  socket_unlock(fd_cb->so, 0);

  if (data != ((void*)0)) {
   mbuf_freem(data);
  }
 }
 FDUNLOCK(fd_cb);
}
