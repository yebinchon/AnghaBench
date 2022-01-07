
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct socket {struct socket* m_nextpkt; int m_flags; } ;
struct sockaddr {int dummy; } ;
struct mbuf {struct mbuf* m_nextpkt; int m_flags; } ;
struct cfi_buf {scalar_t__ cfi_pending_last; scalar_t__ cfi_pending_mbcnt; scalar_t__ cfi_pending_mbnum; scalar_t__ cfi_pass_offset; unsigned int cfi_pending_first; int cfi_tail_drop_cnt; } ;
struct cfil_info {int cfi_flags; struct cfi_buf cfi_rcv; struct cfi_buf cfi_snd; } ;
typedef scalar_t__ errno_t ;


 int CFIF_DROP ;
 int CFIL_INFO_VERIFY (struct cfil_info*) ;
 int CFIL_LOG (int ,char*,...) ;
 int ENOBUFS ;
 int EPIPE ;
 scalar_t__ IS_ENTRY_ATTACHED (struct cfil_info*,int) ;
 scalar_t__ IS_UDP (struct socket*) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int MAX_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_data_filter (struct socket*,struct cfil_info*,int,int,struct socket*,unsigned int) ;
 unsigned int cfil_data_length (struct socket*,int*,int*) ;
 int cfil_info_buf_verify (struct cfi_buf*) ;
 scalar_t__ cfil_udp_gc_mbuf_cnt_max ;
 scalar_t__ cfil_udp_gc_mbuf_num_max ;
 int cfil_udp_save_socket_state (struct cfil_info*,struct socket*) ;
 int cfil_update_entry_offsets (struct socket*,struct cfil_info*,int,unsigned int) ;
 struct socket* sbconcat_mbufs (int *,struct sockaddr*,struct socket*,struct socket*) ;

int
cfil_data_common(struct socket *so, struct cfil_info *cfil_info, int outgoing, struct sockaddr *to,
  struct mbuf *data, struct mbuf *control, uint32_t flags)
{
#pragma unused(to, control, flags)
 errno_t error = 0;
 unsigned int datalen;
 int mbcnt = 0;
 int mbnum = 0;
 int kcunit;
 struct cfi_buf *cfi_buf;
 struct mbuf *chain = ((void*)0);

 if (cfil_info == ((void*)0)) {
  CFIL_LOG(LOG_ERR, "so %llx cfil detached",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  error = 0;
  goto done;
 } else if (cfil_info->cfi_flags & CFIF_DROP) {
  CFIL_LOG(LOG_ERR, "so %llx drop set",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  error = EPIPE;
  goto done;
 }

 datalen = cfil_data_length(data, &mbcnt, &mbnum);

 if (outgoing)
  cfi_buf = &cfil_info->cfi_snd;
 else
  cfi_buf = &cfil_info->cfi_rcv;

 cfi_buf->cfi_pending_last += datalen;
 cfi_buf->cfi_pending_mbcnt += mbcnt;
 cfi_buf->cfi_pending_mbnum += mbnum;

 if (IS_UDP(so)) {
  if (cfi_buf->cfi_pending_mbnum > cfil_udp_gc_mbuf_num_max ||
   cfi_buf->cfi_pending_mbcnt > cfil_udp_gc_mbuf_cnt_max) {
   cfi_buf->cfi_tail_drop_cnt++;
   cfi_buf->cfi_pending_mbcnt -= mbcnt;
   cfi_buf->cfi_pending_mbnum -= mbnum;
   return (EPIPE);
  }
 }

 cfil_info_buf_verify(cfi_buf);
 if (cfi_buf->cfi_pending_last <= cfi_buf->cfi_pass_offset) {
  cfil_update_entry_offsets(so, cfil_info, outgoing, datalen);



 } else {
  for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {

   if (IS_ENTRY_ATTACHED(cfil_info, kcunit)) {
    if (IS_UDP(so)) {




     (void) cfil_udp_save_socket_state(cfil_info, data);
     chain = sbconcat_mbufs(((void*)0), outgoing ? ((void*)0) : to, data, control);
     if (chain == ((void*)0)) {
      return (ENOBUFS);
     }
     data = chain;
    }
    error = cfil_data_filter(so, cfil_info, kcunit, outgoing, data,
           datalen);
   }

   if (error != 0)
    break;
  }
 }


 if (error == 0) {
  cfi_buf->cfi_pending_first += datalen;
  cfi_buf->cfi_pending_mbcnt -= mbcnt;
  cfi_buf->cfi_pending_mbnum -= mbnum;
  cfil_info_buf_verify(cfi_buf);
 }
done:
 CFIL_INFO_VERIFY(cfil_info);

 return (error);
}
