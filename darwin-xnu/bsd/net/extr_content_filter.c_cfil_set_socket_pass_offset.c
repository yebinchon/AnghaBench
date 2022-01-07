
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct socket {int dummy; } ;
struct cfi_buf {scalar_t__ cfi_pending_first; scalar_t__ cfi_pending_last; scalar_t__ cfi_pass_offset; } ;
struct cfil_info {int cfi_sock_id; struct cfil_entry* cfi_entries; struct cfi_buf cfi_rcv; struct cfi_buf cfi_snd; } ;
struct cfe_buf {scalar_t__ cfe_pass_offset; } ;
struct cfil_entry {struct cfe_buf cfe_rcv; struct cfe_buf cfe_snd; int * cfe_filter; } ;


 int CFIL_LOG (int ,char*,scalar_t__,int,...) ;
 int LOG_DEBUG ;
 int LOG_INFO ;
 int MAX_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int socket_lock_assert_owned (struct socket*) ;

__attribute__((used)) static int
cfil_set_socket_pass_offset(struct socket *so, struct cfil_info *cfil_info, int outgoing)
{
 struct cfi_buf *cfi_buf;
 struct cfil_entry *entry;
 struct cfe_buf *entrybuf;
 uint32_t kcunit;
 uint64_t pass_offset = 0;

 if (cfil_info == ((void*)0))
  return (0);

 CFIL_LOG(LOG_INFO, "so %llx outgoing %d",
  (uint64_t)VM_KERNEL_ADDRPERM(so), outgoing);

 socket_lock_assert_owned(so);

 if (outgoing)
  cfi_buf = &cfil_info->cfi_snd;
 else
  cfi_buf = &cfil_info->cfi_rcv;

 CFIL_LOG(LOG_DEBUG, "CFIL: <so %llx, sockID %llu> outgoing %d cfi_pending_first %llu cfi_pending_last %llu",
    (uint64_t)VM_KERNEL_ADDRPERM(so), cfil_info->cfi_sock_id, outgoing,
    cfi_buf->cfi_pending_first, cfi_buf->cfi_pending_last);

 if (cfi_buf->cfi_pending_last - cfi_buf->cfi_pending_first == 0) {
  for (kcunit = 1; kcunit <= MAX_CONTENT_FILTER; kcunit++) {
   entry = &cfil_info->cfi_entries[kcunit - 1];


   if (entry->cfe_filter == ((void*)0))
    continue;

   if (outgoing)
    entrybuf = &entry->cfe_snd;
   else
    entrybuf = &entry->cfe_rcv;

   if (pass_offset == 0 ||
       entrybuf->cfe_pass_offset < pass_offset)
    pass_offset = entrybuf->cfe_pass_offset;
  }
  cfi_buf->cfi_pass_offset = pass_offset;
 }

 CFIL_LOG(LOG_DEBUG, "CFIL: <so %llx, sockID %llu>, cfi_pass_offset %llu",
    (uint64_t)VM_KERNEL_ADDRPERM(so), cfil_info->cfi_sock_id, cfi_buf->cfi_pass_offset);

 return (0);
}
