
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
struct cfil_info {struct cfil_entry* cfi_entries; } ;
struct TYPE_4__ {unsigned int q_start; unsigned int q_end; } ;
struct TYPE_3__ {unsigned int q_start; unsigned int q_end; } ;
struct cfe_buf {scalar_t__ cfe_pass_offset; scalar_t__ cfe_peeked; scalar_t__ cfe_peek_offset; TYPE_2__ cfe_pending_q; TYPE_1__ cfe_ctl_q; } ;
struct cfil_entry {struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; int * cfe_filter; } ;


 int CFIL_INFO_VERIFY (struct cfil_info*) ;
 int CFIL_LOG (int ,char*,int ,int,unsigned int) ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;

__attribute__((used)) static int
cfil_update_entry_offsets(struct socket *so, struct cfil_info *cfil_info, int outgoing, unsigned int datalen)
{
 struct cfil_entry *entry;
 struct cfe_buf *entrybuf;
 uint32_t kcunit;

 CFIL_LOG(LOG_INFO, "so %llx outgoing %d datalen %u",
  (uint64_t)VM_KERNEL_ADDRPERM(so), outgoing, datalen);

 for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
  entry = &cfil_info->cfi_entries[kcunit - 1];


  if (entry->cfe_filter == ((void*)0))
   continue;

  if (outgoing)
   entrybuf = &entry->cfe_snd;
  else
   entrybuf = &entry->cfe_rcv;

  entrybuf->cfe_ctl_q.q_start += datalen;
  entrybuf->cfe_pass_offset = entrybuf->cfe_ctl_q.q_start;
  entrybuf->cfe_peeked = entrybuf->cfe_ctl_q.q_start;
  if (entrybuf->cfe_peek_offset < entrybuf->cfe_pass_offset)
   entrybuf->cfe_peek_offset = entrybuf->cfe_pass_offset;

  entrybuf->cfe_ctl_q.q_end += datalen;

  entrybuf->cfe_pending_q.q_start += datalen;
  entrybuf->cfe_pending_q.q_end += datalen;
 }
 CFIL_INFO_VERIFY(cfil_info);
 return (0);
}
