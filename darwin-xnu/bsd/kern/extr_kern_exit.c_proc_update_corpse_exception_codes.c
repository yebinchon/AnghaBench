
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int mach_exception_data_type_t ;
struct TYPE_5__ {int osr_namespace; int osr_code; } ;
struct TYPE_4__ {int task; TYPE_3__* p_exit_reason; } ;


 int EXC_RESOURCE_ENCODE_FLAVOR (int ,int ) ;
 int EXC_RESOURCE_ENCODE_TYPE (int ,int ) ;
 int EXC_RESOURCE_HWM_ENCODE_LIMIT (int ,int) ;
 int FLAVOR_HIGH_WATERMARK ;
 int JETSAM_REASON_MEMORY_PERPROCESSLIMIT ;

 TYPE_3__* OS_REASON_NULL ;
 int RESOURCE_TYPE_MEMORY ;
 int get_task_phys_footprint_limit (int ) ;

__attribute__((used)) static void proc_update_corpse_exception_codes(proc_t p, mach_exception_data_type_t *code, mach_exception_data_type_t *subcode)
{
 mach_exception_data_type_t code_update = *code;
 mach_exception_data_type_t subcode_update = *subcode;
 if (p->p_exit_reason == OS_REASON_NULL) {
  return;
 }

 switch (p->p_exit_reason->osr_namespace) {
  case 128:
   if (p->p_exit_reason->osr_code == JETSAM_REASON_MEMORY_PERPROCESSLIMIT) {

    EXC_RESOURCE_ENCODE_TYPE(code_update, RESOURCE_TYPE_MEMORY);
    EXC_RESOURCE_ENCODE_FLAVOR(code_update, FLAVOR_HIGH_WATERMARK);
    EXC_RESOURCE_HWM_ENCODE_LIMIT(code_update, ((get_task_phys_footprint_limit(p->task)) >> 20));
    subcode_update = 0;
    break;
   }

   break;
  default:
   break;
 }

 *code = code_update;
 *subcode = subcode_update;
 return;
}
