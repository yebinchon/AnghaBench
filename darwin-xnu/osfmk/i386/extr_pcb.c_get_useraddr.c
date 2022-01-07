
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rip; } ;
struct TYPE_7__ {TYPE_1__ isf; } ;
typedef TYPE_2__ x86_saved_state64_t ;
struct TYPE_8__ {int eip; } ;
typedef TYPE_3__ x86_saved_state32_t ;
typedef int user_addr_t ;
typedef int thread_t ;


 TYPE_3__* USER_REGS32 (int ) ;
 TYPE_2__* USER_REGS64 (int ) ;
 int current_thread () ;
 scalar_t__ thread_is_64bit_addr (int ) ;

user_addr_t
get_useraddr(void)
{
        thread_t thr_act = current_thread();

        if (thread_is_64bit_addr(thr_act)) {
         x86_saved_state64_t *iss64;

  iss64 = USER_REGS64(thr_act);

          return(iss64->isf.rip);
 } else {
         x86_saved_state32_t *iss32;

  iss32 = USER_REGS32(thr_act);

          return(iss32->eip);
 }
}
