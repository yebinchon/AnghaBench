
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mrso_name; } ;
typedef TYPE_1__ mach_right_send_once_t ;
typedef int kern_return_t ;


 int KERN_FAILURE ;

 int MACH_PORT_RIGHT_DEAD_NAME ;
 int MACH_PORT_RIGHT_SEND_ONCE ;
 int _mach_assert (char*,int) ;
 int mach_port_mod_refs (int ,int ,int ,int) ;
 int mach_task_self () ;

void
mach_right_send_once_consume(mach_right_send_once_t so)
{
 kern_return_t kr = KERN_FAILURE;

 kr = mach_port_mod_refs(mach_task_self(), so.mrso_name,
   MACH_PORT_RIGHT_SEND_ONCE, -1);
 switch (kr) {
 case 0:
  break;
 case 128:
  kr = mach_port_mod_refs(mach_task_self(), so.mrso_name,
    MACH_PORT_RIGHT_DEAD_NAME, -1);
  _mach_assert("release dead name", kr);
  break;
 default:
  _mach_assert("consume send-once right", kr);
 }
}
