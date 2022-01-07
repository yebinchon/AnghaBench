
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* proc_t ;
typedef int mach_exception_data_type_t ;
struct TYPE_5__ {int osr_code; int osr_namespace; } ;
struct TYPE_4__ {TYPE_3__* p_exit_reason; } ;


 int ENCODE_OSR_CODE_TO_MACH_EXCEPTION_CODE (int ,int ) ;
 int ENCODE_OSR_NAMESPACE_TO_MACH_EXCEPTION_CODE (int ,int ) ;
 TYPE_3__* OS_REASON_NULL ;

mach_exception_data_type_t proc_encode_exit_exception_code(proc_t p)
{
 uint64_t subcode = 0;

 if (p->p_exit_reason == OS_REASON_NULL) {
  return 0;
 }


 ENCODE_OSR_NAMESPACE_TO_MACH_EXCEPTION_CODE(subcode, p->p_exit_reason->osr_namespace);
 ENCODE_OSR_CODE_TO_MACH_EXCEPTION_CODE(subcode, p->p_exit_reason->osr_code);
 return (mach_exception_data_type_t)subcode;
}
