
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mk_timer_arm_trap_args {int expire_time; int name; } ;
typedef int kern_return_t ;


 int MK_TIMER_NORMAL ;
 int mk_timer_arm_trap_internal (int ,int ,int ,int ) ;

kern_return_t
mk_timer_arm_trap(struct mk_timer_arm_trap_args *args) {
 return mk_timer_arm_trap_internal(args->name, args->expire_time, 0, MK_TIMER_NORMAL);
}
