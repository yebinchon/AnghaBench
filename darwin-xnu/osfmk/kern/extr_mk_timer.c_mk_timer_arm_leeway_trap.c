
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mk_timer_arm_leeway_trap_args {int mk_timer_flags; int mk_leeway; int expire_time; int name; } ;
typedef int kern_return_t ;


 int mk_timer_arm_trap_internal (int ,int ,int ,int ) ;

kern_return_t
mk_timer_arm_leeway_trap(struct mk_timer_arm_leeway_trap_args *args) {
 return mk_timer_arm_trap_internal(args->name, args->expire_time, args->mk_leeway, args->mk_timer_flags);
}
