
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct image_params {int ip_flags; int ip_csflags; int ip_mac_return; scalar_t__ ip_cs_error; int ip_new_thread; } ;
struct cs_blob {int csb_flags; scalar_t__ csb_platform_binary; int * csb_entitlements_blob; int csb_mem_size; scalar_t__ csb_mem_kaddr; } ;
typedef TYPE_1__* proc_t ;
typedef scalar_t__ os_reason_t ;
typedef int * mach_port_t ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_9__ {int p_csflags; scalar_t__ p_textvp; char* p_name; int task; int p_textoff; int p_pid; } ;


 int BSDDBG_CODE (int ,int ) ;
 int BSD_PROC_EXITREASON_CREATE ;
 int CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG ;
 int CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT ;
 int CSMAGIC_BLOBWRAPPER ;
 int CSSLOT_SIGNATURESLOT ;
 int CS_ADHOC ;
 int CS_ALLOWED_MACHO ;
 int CS_CDHASH_LEN ;
 int CS_CDHASH_STRING_SIZE ;
 int CS_HARD ;
 int CS_KILL ;
 int CS_KILLED ;
 int CS_SIGNED ;
 int CS_VALID ;
 int DBG_BSD_PROC ;
 int DBG_FUNC_NONE ;
 int EACCES ;
 int EXEC_EXIT_REASON_SECURITY_POLICY ;
 int EXEC_EXIT_REASON_TASKGATED_OTHER ;
 scalar_t__ FALSE ;
 int IMGPF_SPAWN ;
 int IMGPF_VFORK_EXEC ;
 int IPC_PORT_VALID (int *) ;
 int KERNEL_DEBUG_CONSTANT (int,int ,int ,int ,int ,int ) ;


 scalar_t__ NULLVP ;
 int OS_REASON_CODESIGNING ;
 int OS_REASON_EXEC ;
 scalar_t__ OS_REASON_NULL ;
 int SIGKILL ;
 scalar_t__ TRUE ;
 int __EXEC_WAITING_ON_TASKGATED_CODE_SIGNATURE_UPCALL__ (int *,int ) ;
 int assert (int) ;
 int cdhash_to_string (char*,int *) ;
 int * csblob_find_blob_bytes (int const*,int ,int ,int ) ;
 scalar_t__ csproc_get_platform_binary (TYPE_1__*) ;
 int get_task_map (int ) ;
 int os_log (int ,char*,char*,char*) ;
 scalar_t__ os_reason_create (int ,int ) ;
 int peLog ;
 scalar_t__ platform_exec_logging ;
 int printf (char*,char*,char*) ;
 int proc_getcdhash (TYPE_1__*,int *) ;
 int proc_lock (TYPE_1__*) ;
 int proc_unlock (TYPE_1__*) ;
 int psignal_vfork_with_reason (TYPE_1__*,int ,int ,int ,scalar_t__) ;
 int psignal_with_reason (TYPE_1__*,int ,scalar_t__) ;
 int task_get_task_access_port (int ,int **) ;
 struct cs_blob* ubc_cs_blob_get (scalar_t__,int,int ) ;
 scalar_t__ ubc_cs_blob_revalidate (scalar_t__,struct cs_blob*,struct image_params*,int ) ;
 scalar_t__ ubc_cs_generation_check (scalar_t__) ;
 int vm_map_switch_protect (int ,scalar_t__) ;

__attribute__((used)) static int
check_for_signature(proc_t p, struct image_params *imgp)
{
 mach_port_t port = ((void*)0);
 kern_return_t kr = 129;
 int error = EACCES;
 boolean_t unexpected_failure = FALSE;
 struct cs_blob *csb;
 boolean_t require_success = FALSE;
 int spawn = (imgp->ip_flags & IMGPF_SPAWN);
 int vfexec = (imgp->ip_flags & IMGPF_VFORK_EXEC);
 os_reason_t signature_failure_reason = OS_REASON_NULL;






 proc_lock(p);
 p->p_csflags = imgp->ip_csflags;
 proc_unlock(p);


 if(p->p_csflags & (CS_HARD|CS_KILL)) {
  vm_map_switch_protect(get_task_map(p->task), TRUE);
 }






 if (imgp->ip_mac_return != 0) {

  KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
      p->p_pid, OS_REASON_EXEC, EXEC_EXIT_REASON_SECURITY_POLICY, 0, 0);
  signature_failure_reason = os_reason_create(OS_REASON_EXEC, EXEC_EXIT_REASON_SECURITY_POLICY);
  error = imgp->ip_mac_return;
  unexpected_failure = TRUE;
  goto done;
 }

 if (imgp->ip_cs_error != OS_REASON_NULL) {
  signature_failure_reason = imgp->ip_cs_error;
  imgp->ip_cs_error = OS_REASON_NULL;
  error = EACCES;
  goto done;
 }



 if (imgp->ip_csflags & CS_SIGNED) {
  error = 0;
  goto done;
 }





 kr = task_get_task_access_port(p->task, &port);
 if (128 != kr || !IPC_PORT_VALID(port)) {
  error = 0;
  if (require_success) {
   KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
       p->p_pid, OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT, 0, 0);
   signature_failure_reason = os_reason_create(OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASK_ACCESS_PORT);
   error = EACCES;
  }
  goto done;
 }
 kr = __EXEC_WAITING_ON_TASKGATED_CODE_SIGNATURE_UPCALL__(port, p->p_pid);
 switch (kr) {
 case 128:
  error = 0;
  break;
 case 129:
  error = EACCES;

  KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
      p->p_pid, OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG, 0, 0);
  signature_failure_reason = os_reason_create(OS_REASON_CODESIGNING, CODESIGNING_EXIT_REASON_TASKGATED_INVALID_SIG);
  goto done;
 default:
  error = EACCES;

  KERNEL_DEBUG_CONSTANT(BSDDBG_CODE(DBG_BSD_PROC, BSD_PROC_EXITREASON_CREATE) | DBG_FUNC_NONE,
      p->p_pid, OS_REASON_EXEC, EXEC_EXIT_REASON_TASKGATED_OTHER, 0, 0);
  signature_failure_reason = os_reason_create(OS_REASON_EXEC, EXEC_EXIT_REASON_TASKGATED_OTHER);
  unexpected_failure = TRUE;
  goto done;
 }


 if (p->p_textvp != NULLVP) {
  csb = ubc_cs_blob_get(p->p_textvp, -1, p->p_textoff);

  if (csb != ((void*)0)) {




   if (

                (ubc_cs_generation_check(p->p_textvp) == 0 ||
                 ubc_cs_blob_revalidate(p->p_textvp, csb, imgp, 0) == 0) &&

    (csb->csb_flags & CS_ALLOWED_MACHO) == CS_ADHOC &&

    csblob_find_blob_bytes((const uint8_t *)csb->csb_mem_kaddr, csb->csb_mem_size,
            CSSLOT_SIGNATURESLOT,
            CSMAGIC_BLOBWRAPPER) == ((void*)0) &&

    csb->csb_platform_binary == 0 &&

                csb->csb_entitlements_blob == ((void*)0)) {

    proc_lock(p);
    p->p_csflags |= CS_SIGNED | CS_VALID;
    proc_unlock(p);

   } else {
    uint8_t cdhash[CS_CDHASH_LEN];
    char cdhash_string[CS_CDHASH_STRING_SIZE];
    proc_getcdhash(p, cdhash);
    cdhash_to_string(cdhash_string, cdhash);
    printf("ignoring detached code signature on '%s' with cdhash '%s' "
        "because it is invalid, or not a simple adhoc signature.\n",
        p->p_name, cdhash_string);
   }

  }
 }

done:
 if (0 == error) {



  if (platform_exec_logging != 0 && csproc_get_platform_binary(p)) {
   uint8_t cdhash[CS_CDHASH_LEN];
   char cdhash_string[CS_CDHASH_STRING_SIZE];
   proc_getcdhash(p, cdhash);
   cdhash_to_string(cdhash_string, cdhash);

   os_log(peLog, "CS Platform Exec Logging: Executing platform signed binary "
       "'%s' with cdhash %s\n", p->p_name, cdhash_string);
  }
 } else {
  if (!unexpected_failure)
   p->p_csflags |= CS_KILLED;

  if (vfexec || spawn) {
   assert(signature_failure_reason != OS_REASON_NULL);
   psignal_vfork_with_reason(p, p->task, imgp->ip_new_thread,
     SIGKILL, signature_failure_reason);
   signature_failure_reason = OS_REASON_NULL;
   error = 0;
  } else {
   assert(signature_failure_reason != OS_REASON_NULL);
   psignal_with_reason(p, SIGKILL, signature_failure_reason);
   signature_failure_reason = OS_REASON_NULL;
  }
 }


 assert(signature_failure_reason == OS_REASON_NULL);
 return error;
}
