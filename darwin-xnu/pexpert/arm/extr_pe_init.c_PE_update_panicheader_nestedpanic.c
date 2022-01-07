
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ eph_panic_log_offset; scalar_t__ eph_panic_log_len; scalar_t__ eph_other_log_offset; scalar_t__ eph_other_log_len; scalar_t__ eph_stackshot_offset; scalar_t__ eph_stackshot_len; int eph_panic_flags; } ;


 int EMBEDDED_PANIC_HEADER_FLAG_NESTED_PANIC ;
 void* PE_get_offset_into_panic_region (int ) ;
 int PE_init_panicheader () ;
 int assert (int) ;
 int debug_buf_ptr ;
 TYPE_1__* panic_info ;

void
PE_update_panicheader_nestedpanic()
{
 if (!panic_info)
  return;




 if (panic_info->eph_panic_log_offset == 0) {
  PE_init_panicheader();
  panic_info->eph_panic_flags |= EMBEDDED_PANIC_HEADER_FLAG_NESTED_PANIC;
  return;
 }

 panic_info->eph_panic_flags |= EMBEDDED_PANIC_HEADER_FLAG_NESTED_PANIC;





 if (panic_info->eph_panic_log_len == 0) {
  panic_info->eph_panic_log_len = PE_get_offset_into_panic_region(debug_buf_ptr);


  assert(panic_info->eph_other_log_offset == panic_info->eph_other_log_len == 0);
 }


 assert(((panic_info->eph_stackshot_offset == 0) && (panic_info->eph_stackshot_len == 0)) ||
   ((panic_info->eph_stackshot_offset != 0) && (panic_info->eph_stackshot_len != 0)));





 if (panic_info->eph_other_log_offset == 0) {
  panic_info->eph_other_log_offset = PE_get_offset_into_panic_region(debug_buf_ptr);


  assert(panic_info->eph_other_log_len == 0);
 }

 return;
}
