
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mrs_name; } ;
typedef TYPE_1__ mach_right_send_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;


 int MACH_PORT_DEAD ;
 int MACH_PORT_RIGHT_SEND ;
 TYPE_1__ MACH_RIGHT_SEND_NULL ;
 int _mach_assert (char*,int) ;
 int mach_port_mod_refs (int ,int ,int ,int) ;
 int mach_task_self () ;

mach_right_send_t
mach_right_send_retain(mach_right_send_t s)
{
 kern_return_t kr = KERN_FAILURE;
 mach_right_send_t rs = MACH_RIGHT_SEND_NULL;

 kr = mach_port_mod_refs(mach_task_self(), s.mrs_name,
   MACH_PORT_RIGHT_SEND, 1);
 switch (kr) {
 case 0:
  rs = s;
  break;
 case 128:
  rs.mrs_name = MACH_PORT_DEAD;
  break;
 case 129:



 default:
  _mach_assert("retain send right", kr);
 }

 return rs;
}
