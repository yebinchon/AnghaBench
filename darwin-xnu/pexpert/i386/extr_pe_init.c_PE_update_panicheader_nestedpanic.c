
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ mph_panic_log_offset; scalar_t__ mph_stackshot_offset; scalar_t__ mph_stackshot_len; scalar_t__ mph_panic_log_len; scalar_t__ mph_other_log_offset; scalar_t__ mph_other_log_len; int mph_panic_flags; } ;


 int MACOS_PANIC_HEADER_FLAG_NESTED_PANIC ;
 scalar_t__ PE_get_offset_into_panic_region (int ) ;
 int PE_init_panicheader () ;
 int debug_buf_ptr ;
 int kdb_printf (char*,scalar_t__,...) ;
 TYPE_1__* panic_info ;

void
PE_update_panicheader_nestedpanic()
{

 if (panic_info->mph_panic_log_offset == 0) {
  PE_init_panicheader();
  panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_NESTED_PANIC;
  return;
 }

 panic_info->mph_panic_flags |= MACOS_PANIC_HEADER_FLAG_NESTED_PANIC;


 if(!(((panic_info->mph_stackshot_offset == 0) && (panic_info->mph_stackshot_len == 0)) ||
   ((panic_info->mph_stackshot_offset != 0) && (panic_info->mph_stackshot_len != 0)))) {
  kdb_printf("panic_info contains invalid stackshot metadata: mph_stackshot_offset 0x%x mph_stackshot_len 0x%x\n",
    panic_info->mph_stackshot_offset, panic_info->mph_stackshot_len);
 }





 if ((panic_info->mph_panic_log_len != 0) && (panic_info->mph_other_log_offset == 0)) {
  panic_info->mph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);


  if (panic_info->mph_other_log_len != 0) {
   kdb_printf("panic_info contains invalid other log metadata (zero offset but non-zero length), length was 0x%x, zeroing value\n",
     panic_info->mph_other_log_len);
   panic_info->mph_other_log_len = 0;
  }
 }

 return;
}
