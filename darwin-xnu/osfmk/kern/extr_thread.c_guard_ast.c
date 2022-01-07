
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* thread_t ;
typedef scalar_t__ mach_exception_data_type_t ;
struct TYPE_8__ {scalar_t__ subcode; scalar_t__ code; } ;
struct TYPE_9__ {TYPE_1__ guard_exc_info; } ;


 int EXC_GUARD_DECODE_GUARD_TYPE (scalar_t__ const) ;





 int fd_guard_ast (TYPE_2__*,scalar_t__ const,scalar_t__ const) ;
 int mach_port_guard_ast (TYPE_2__*,scalar_t__ const,scalar_t__ const) ;
 int panic (char*,scalar_t__ const,scalar_t__ const) ;
 int virt_memory_guard_ast (TYPE_2__*,scalar_t__ const,scalar_t__ const) ;
 int vn_guard_ast (TYPE_2__*,scalar_t__ const,scalar_t__ const) ;

void
guard_ast(thread_t t)
{
 const mach_exception_data_type_t
  code = t->guard_exc_info.code,
  subcode = t->guard_exc_info.subcode;

 t->guard_exc_info.code = 0;
 t->guard_exc_info.subcode = 0;

 switch (EXC_GUARD_DECODE_GUARD_TYPE(code)) {
 case 130:

  break;
 case 131:
  mach_port_guard_ast(t, code, subcode);
  break;
 case 132:
  fd_guard_ast(t, code, subcode);
  break;





 case 129:
  virt_memory_guard_ast(t, code, subcode);
  break;
 default:
  panic("guard_exc_info %llx %llx", code, subcode);
 }
}
