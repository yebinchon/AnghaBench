
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct flow_divert_pcb {size_t send_window; TYPE_2__* so; } ;
typedef TYPE_1__* mbuf_t ;
struct TYPE_14__ {size_t sb_cc; TYPE_1__* sb_mb; } ;
struct TYPE_13__ {TYPE_3__ so_snd; } ;
struct TYPE_12__ {scalar_t__ m_type; struct TYPE_12__* m_nextpkt; struct TYPE_12__* m_next; } ;
typedef int Boolean ;


 int FDLOG (int ,struct flow_divert_pcb*,char*,size_t) ;
 int FDLOG0 (int ,struct flow_divert_pcb*,char*) ;
 size_t FLOW_DIVERT_CHUNK_SIZE ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int MBUF_DONTWAIT ;
 scalar_t__ MT_DATA ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 scalar_t__ SOCK_TYPE (TYPE_2__*) ;
 struct sockaddr* flow_divert_get_buffered_target_address (TYPE_1__*) ;
 int flow_divert_send_data_packet (struct flow_divert_pcb*,TYPE_1__*,size_t,struct sockaddr*,int ) ;
 int mbuf_copym (TYPE_1__*,size_t,size_t,int ,TYPE_1__**) ;
 int mbuf_freem (TYPE_1__*) ;
 size_t mbuf_pkthdr_len (TYPE_1__*) ;
 int sbdrop (TYPE_3__*,size_t) ;
 int sbdroprecord (TYPE_3__*) ;
 int sowwakeup (TYPE_2__*) ;

__attribute__((used)) static void
flow_divert_send_buffered_data(struct flow_divert_pcb *fd_cb, Boolean force)
{
 size_t to_send;
 size_t sent = 0;
 int error = 0;
 mbuf_t buffer;

 to_send = fd_cb->so->so_snd.sb_cc;
 buffer = fd_cb->so->so_snd.sb_mb;

 if (buffer == ((void*)0) && to_send > 0) {
  FDLOG(LOG_ERR, fd_cb, "Send buffer is NULL, but size is supposed to be %lu", to_send);
  return;
 }


 if (!force && (to_send > fd_cb->send_window)) {
  to_send = fd_cb->send_window;
 }

 if (SOCK_TYPE(fd_cb->so) == SOCK_STREAM) {
  while (sent < to_send) {
   mbuf_t data;
   size_t data_len;

   data_len = to_send - sent;
   if (data_len > FLOW_DIVERT_CHUNK_SIZE) {
    data_len = FLOW_DIVERT_CHUNK_SIZE;
   }

   error = mbuf_copym(buffer, sent, data_len, MBUF_DONTWAIT, &data);
   if (error) {
    FDLOG(LOG_ERR, fd_cb, "mbuf_copym failed: %d", error);
    break;
   }

   error = flow_divert_send_data_packet(fd_cb, data, data_len, ((void*)0), force);
   if (error) {
    mbuf_freem(data);
    break;
   }

   sent += data_len;
  }
  sbdrop(&fd_cb->so->so_snd, sent);
  sowwakeup(fd_cb->so);
 } else if (SOCK_TYPE(fd_cb->so) == SOCK_DGRAM) {
  mbuf_t data;
  mbuf_t m;
  size_t data_len;

  while(buffer) {
   struct sockaddr *toaddr = flow_divert_get_buffered_target_address(buffer);

   m = buffer;
   if (toaddr != ((void*)0)) {

    do {
     m = m->m_next;
     if (m != ((void*)0) && m->m_type == MT_DATA) {
      break;
     }
    } while(m);
    if (m == ((void*)0)) {

     FDLOG0(LOG_ERR, fd_cb, "failed to find type MT_DATA in the mbuf chain.");
     goto move_on;
    }
   }
   data_len = mbuf_pkthdr_len(m);
   if (data_len > 0) {
    FDLOG(LOG_DEBUG, fd_cb, "mbuf_copym() data_len = %lu", data_len);
    error = mbuf_copym(m, 0, data_len, MBUF_DONTWAIT, &data);
    if (error) {
     FDLOG(LOG_ERR, fd_cb, "mbuf_copym failed: %d", error);
     break;
    }
   } else {
    data = ((void*)0);
   }
   error = flow_divert_send_data_packet(fd_cb, data, data_len, toaddr, force);
   if (error) {
    mbuf_freem(data);
    break;
   }
   sent += data_len;
move_on:
   buffer = buffer->m_nextpkt;
   (void) sbdroprecord(&(fd_cb->so->so_snd));
  }
 }

 if (sent > 0) {
  FDLOG(LOG_DEBUG, fd_cb, "sent %lu bytes of buffered data", sent);
  if (fd_cb->send_window >= sent) {
   fd_cb->send_window -= sent;
  } else {
   fd_cb->send_window = 0;
  }
 }
}
