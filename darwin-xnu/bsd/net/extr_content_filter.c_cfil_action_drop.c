
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct socket {int so_flags; int * so_cfil_db; } ;
struct proc {int dummy; } ;
struct cfil_info {int cfi_flags; struct cfil_entry* cfi_entries; } ;
struct cfil_entry {int cfe_flags; int * cfe_filter; } ;
typedef scalar_t__ errno_t ;
typedef int caddr_t ;


 int CFEF_CFIL_DETACHED ;
 int CFIF_CLOSE_WAIT ;
 int CFIF_DROP ;
 int CFIL_LOG (int ,char*,int ,...) ;
 int FALSE ;
 int LOG_ERR ;
 int LOG_INFO ;
 int SHUTDOWN_SOCKET_LEVEL_CONTENT_FILTER ;
 int SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL ;
 int SOF_CONTENT_FILTER ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_filters_attached (struct socket*) ;
 int cfil_flush_queues (struct socket*,struct cfil_info*) ;
 int cfil_info_log (int ,struct cfil_info*,char*) ;
 struct proc* current_proc () ;
 int socket_lock_assert_owned (struct socket*) ;
 scalar_t__ sodefunct (struct proc*,struct socket*,int) ;
 scalar_t__ sosetdefunct (struct proc*,struct socket*,int,int ) ;
 int wakeup (int ) ;

int
cfil_action_drop(struct socket *so, struct cfil_info *cfil_info, uint32_t kcunit)
{
 errno_t error = 0;
 struct cfil_entry *entry;
 struct proc *p;

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || cfil_info == ((void*)0))
  goto done;

 socket_lock_assert_owned(so);

 entry = &cfil_info->cfi_entries[kcunit - 1];


 if (entry->cfe_filter == ((void*)0))
  goto done;

 cfil_info->cfi_flags |= CFIF_DROP;

 p = current_proc();





 if (so->so_cfil_db == ((void*)0)) {
  error = sosetdefunct(p, so,
        SHUTDOWN_SOCKET_LEVEL_CONTENT_FILTER | SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL,
        FALSE);


  if (error == 0)
   error = sodefunct(p, so,
         SHUTDOWN_SOCKET_LEVEL_CONTENT_FILTER | SHUTDOWN_SOCKET_LEVEL_DISCONNECT_ALL);
 }


 entry->cfe_flags |= CFEF_CFIL_DETACHED;



 CFIL_LOG(LOG_INFO, "so %llx detached %u",
  (uint64_t)VM_KERNEL_ADDRPERM(so), kcunit);


 cfil_flush_queues(so, cfil_info);

 if (cfil_info && (cfil_info->cfi_flags & CFIF_CLOSE_WAIT)) {
  if (cfil_filters_attached(so) == 0) {
   CFIL_LOG(LOG_INFO, "so %llx waking",
    (uint64_t)VM_KERNEL_ADDRPERM(so));
   wakeup((caddr_t)cfil_info);
  }
 }
done:
 return (error);
}
