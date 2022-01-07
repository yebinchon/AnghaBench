
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
struct cfil_info {int cfi_flags; struct cfil_entry* cfi_entries; } ;
struct cfe_buf {scalar_t__ cfe_pass_offset; scalar_t__ cfe_peek_offset; int cfe_ctl_q; } ;
struct cfil_entry {int cfe_flags; struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; } ;
typedef scalar_t__ errno_t ;
typedef int caddr_t ;


 int CFEF_CFIL_DETACHED ;
 int CFIF_CLOSE_WAIT ;
 int CFIF_DROP ;
 int CFIL_INFO_VERIFY (struct cfil_info*) ;
 int CFIL_LOG (int ,char*,scalar_t__,...) ;
 scalar_t__ CFM_MAX_OFFSET ;
 scalar_t__ EJUSTRETURN ;
 scalar_t__ EPIPE ;
 int LOG_ERR ;
 int LOG_INFO ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_data_service_ctl_q (struct socket*,struct cfil_info*,int,int) ;
 scalar_t__ cfil_filters_attached (struct socket*) ;
 int cfil_info_log (int ,struct cfil_info*,char*) ;
 scalar_t__ cfil_queue_empty (int *) ;
 int socket_lock_assert_owned (struct socket*) ;
 int wakeup (int ) ;

int
cfil_update_data_offsets(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit, int outgoing,
 uint64_t pass_offset, uint64_t peek_offset)
{
 errno_t error = 0;
 struct cfil_entry *entry = ((void*)0);
 struct cfe_buf *entrybuf;
 int updated = 0;

 CFIL_LOG(LOG_INFO, "pass %llu peek %llu", pass_offset, peek_offset);

 socket_lock_assert_owned(so);

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

 entry = &cfil_info->cfi_entries[kcunit - 1];
 if (outgoing)
  entrybuf = &entry->cfe_snd;
 else
  entrybuf = &entry->cfe_rcv;


 if (pass_offset > entrybuf->cfe_pass_offset) {
  entrybuf->cfe_pass_offset = pass_offset;

  if (entrybuf->cfe_peek_offset < entrybuf->cfe_pass_offset)
   entrybuf->cfe_peek_offset = entrybuf->cfe_pass_offset;
  updated = 1;
 } else {
  CFIL_LOG(LOG_INFO, "pass_offset %llu <= cfe_pass_offset %llu",
   pass_offset, entrybuf->cfe_pass_offset);
 }

 if (peek_offset > entrybuf->cfe_pass_offset &&
  peek_offset > entrybuf->cfe_peek_offset) {
  entrybuf->cfe_peek_offset = peek_offset;
  updated = 1;
 }

 if (updated == 0)
  goto done;


 error = cfil_data_service_ctl_q(so, cfil_info, kcunit, outgoing);
 if (error != 0) {
  CFIL_LOG(LOG_ERR, "cfil_data_service_ctl_q() error %d",
   error);
  goto done;
 }
 error = EJUSTRETURN;

done:





 if (entry != ((void*)0) &&
     ((entry->cfe_snd.cfe_pass_offset == CFM_MAX_OFFSET &&
     entry->cfe_rcv.cfe_pass_offset == CFM_MAX_OFFSET) ||
     ((cfil_info->cfi_flags & CFIF_CLOSE_WAIT) &&
     cfil_queue_empty(&entry->cfe_snd.cfe_ctl_q) &&
     cfil_queue_empty(&entry->cfe_rcv.cfe_ctl_q)))) {
  entry->cfe_flags |= CFEF_CFIL_DETACHED;





  CFIL_LOG(LOG_INFO, "so %llx detached %u",
   (uint64_t)VM_KERNEL_ADDRPERM(so), kcunit);
  if ((cfil_info->cfi_flags & CFIF_CLOSE_WAIT) &&
      cfil_filters_attached(so) == 0) {



   CFIL_LOG(LOG_INFO, "so %llx waking",
    (uint64_t)VM_KERNEL_ADDRPERM(so));
   wakeup((caddr_t)cfil_info);
  }
 }
 CFIL_INFO_VERIFY(cfil_info);
 CFIL_LOG(LOG_INFO, "return %d", error);
 return (error);
}
