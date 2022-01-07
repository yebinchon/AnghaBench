
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mach_vm_address_t ;
struct TYPE_2__ {scalar_t__ mph_other_log_offset; scalar_t__ mph_panic_log_len; int mph_stackshot_len; int mph_panic_flags; void* mph_stackshot_offset; } ;


 int KCDATA_BUFFER_BEGIN_STACKSHOT ;
 int KCFLAG_USE_MEMCOPY ;
 int KERN_SUCCESS ;
 int MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR ;
 int MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_INCOMPLETE ;
 int MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_NESTED ;
 int MACOS_PANIC_HEADER_FLAG_STACKSHOT_KERNEL_ONLY ;
 int MACOS_PANIC_HEADER_FLAG_STACKSHOT_SUCCEEDED ;
 int PANIC_STACKSHOT_BUFSIZE ;
 void* PE_get_offset_into_panic_region (char*) ;
 int STACKSHOT_ACTIVE_KERNEL_THREADS_ONLY ;
 int STACKSHOT_ENABLE_BT_FAULTING ;
 int STACKSHOT_ENABLE_UUID_FAULTING ;
 int STACKSHOT_FROM_PANIC ;
 int STACKSHOT_GET_GLOBAL_MEM_STATS ;
 int STACKSHOT_KCDATA_FORMAT ;
 int STACKSHOT_NO_IO_STATS ;
 int STACKSHOT_SAVE_KEXT_LOADINFO ;
 int STACKSHOT_SAVE_LOADINFO ;
 int STACKSHOT_THREAD_WAITINFO ;
 scalar_t__ TRUE ;
 scalar_t__ begun_panic_stackshot ;
 int bzero (char*,int) ;
 scalar_t__ debug_buf_base ;
 char* debug_buf_ptr ;
 unsigned int debug_buf_size ;
 int do_stackshot (int *) ;
 scalar_t__ extended_debug_log_enabled ;
 int kc_panic_data ;
 scalar_t__ kcdata_memory_get_used_bytes (int *) ;
 int kcdata_memory_static_init (int *,int ,int ,int,int ) ;
 int kdb_printf (char*,...) ;
 int kdp_snapshot_preflight (int,void*,int,int,int *,int ) ;
 scalar_t__ kdp_stack_snapshot_bytes_traced () ;
 int memset (char*,char,int) ;
 TYPE_1__* panic_info ;
 scalar_t__ panic_stackshot_buf ;
 int panic_stackshot_len ;
 int panic_stackshot_reset_state () ;
 scalar_t__ stackshot_active () ;

void
RecordPanicStackshot()
{
 int err = 0, bytes_traced = 0, bytes_used = 0, bytes_remaining = 0;
 char *stackshot_begin_loc = ((void*)0);


 if (begun_panic_stackshot) {
  if (panic_info->mph_other_log_offset == 0) {
   panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
  }
  return;
 }
 begun_panic_stackshot = TRUE;


 if (panic_info->mph_panic_log_len == 0) {
  kdb_printf("Found zero length panic log, skipping capturing panic stackshot\n");
  if (panic_info->mph_other_log_offset == 0) {
   panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
  }
  return;
 }





 if (extended_debug_log_enabled) {
  if (stackshot_active()) {
   panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_NESTED;
   panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
   kdb_printf("Panicked during stackshot, skipping panic stackshot\n");
   return;
  } else {
   stackshot_begin_loc = debug_buf_ptr;

   bytes_remaining = debug_buf_size - (unsigned int)((uintptr_t)stackshot_begin_loc - (uintptr_t)debug_buf_base);
   err = kcdata_memory_static_init(&kc_panic_data, (mach_vm_address_t)stackshot_begin_loc,
     KCDATA_BUFFER_BEGIN_STACKSHOT, bytes_remaining, KCFLAG_USE_MEMCOPY);
   if (err != KERN_SUCCESS) {
    panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR;
    panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
    kdb_printf("Failed to initialize kcdata buffer for in-memory panic stackshot, skipping ...\n");
    return;
   }

   kdp_snapshot_preflight(-1, (void *) stackshot_begin_loc, bytes_remaining,
         (STACKSHOT_SAVE_KEXT_LOADINFO | STACKSHOT_SAVE_LOADINFO | STACKSHOT_KCDATA_FORMAT |
         STACKSHOT_ENABLE_BT_FAULTING | STACKSHOT_ENABLE_UUID_FAULTING | STACKSHOT_FROM_PANIC |
         STACKSHOT_NO_IO_STATS | STACKSHOT_THREAD_WAITINFO), &kc_panic_data, 0);
   err = do_stackshot(((void*)0));
   bytes_traced = (int) kdp_stack_snapshot_bytes_traced();
   bytes_used = (int) kcdata_memory_get_used_bytes(&kc_panic_data);

   if ((err != KERN_SUCCESS) && (bytes_used > 0)) {




    panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_STACKSHOT_KERNEL_ONLY;
    panic_stackshot_reset_state();


    memset(stackshot_begin_loc, '\0', bytes_used);

    err = kcdata_memory_static_init(&kc_panic_data, (mach_vm_address_t)stackshot_begin_loc,
     KCDATA_BUFFER_BEGIN_STACKSHOT, bytes_remaining, KCFLAG_USE_MEMCOPY);
    if (err != KERN_SUCCESS) {
     panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR;
     panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
     kdb_printf("Failed to re-initialize kcdata buffer for kernel only in-memory panic stackshot, skipping ...\n");
     return;
    }

    kdp_snapshot_preflight(-1, (void *) stackshot_begin_loc, bytes_remaining, (STACKSHOT_KCDATA_FORMAT |
      STACKSHOT_NO_IO_STATS | STACKSHOT_SAVE_KEXT_LOADINFO | STACKSHOT_ACTIVE_KERNEL_THREADS_ONLY |
      STACKSHOT_FROM_PANIC | STACKSHOT_THREAD_WAITINFO), &kc_panic_data, 0);
    err = do_stackshot(((void*)0));
    bytes_traced = (int) kdp_stack_snapshot_bytes_traced();
    bytes_used = (int) kcdata_memory_get_used_bytes(&kc_panic_data);
   }

   if (err == KERN_SUCCESS) {
    debug_buf_ptr += bytes_traced;
    panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_STACKSHOT_SUCCEEDED;
    panic_info->mph_stackshot_offset = PE_get_offset_into_panic_region(stackshot_begin_loc);
    panic_info->mph_stackshot_len = bytes_traced;

    panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
    kdb_printf("\n** In Memory Panic Stackshot Succeeded ** Bytes Traced %d **\n", bytes_traced);
   } else {
    if (bytes_used > 0) {

     memset(stackshot_begin_loc, '\0', bytes_used);
     panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_INCOMPLETE;

     panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
     kdb_printf("\n** In Memory Panic Stackshot Incomplete ** Bytes Filled %d ** Err %d\n", bytes_used, err);
    } else {
     bzero(stackshot_begin_loc, bytes_used);
     panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_STACKSHOT_FAILED_ERROR;

     panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
     kdb_printf("\n** In Memory Panic Stackshot Failed ** Bytes Traced %d, err %d\n", bytes_traced, err);
    }
   }
  }






 } else {
  panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);
 }
 return;
}
