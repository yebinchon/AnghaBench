
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rflags; } ;
struct TYPE_7__ {int rax; TYPE_1__ isf; scalar_t__ rdx; } ;
typedef TYPE_2__ x86_saved_state64_t ;
struct TYPE_8__ {int eax; int efl; scalar_t__ edx; } ;
typedef TYPE_3__ x86_saved_state32_t ;
typedef int thread_t ;


 int DIRTY ;
 int EFL_CF ;
 TYPE_3__* USER_REGS32 (int ) ;
 TYPE_2__* USER_REGS64 (int ) ;
 int pal_register_cache_state (int ,int ) ;
 scalar_t__ thread_is_64bit_addr (int ) ;

void
thread_set_parent(thread_t parent, int pid)
{
 pal_register_cache_state(parent, DIRTY);

 if (thread_is_64bit_addr(parent)) {
  x86_saved_state64_t *iss64;

  iss64 = USER_REGS64(parent);

  iss64->rax = pid;
  iss64->rdx = 0;
  iss64->isf.rflags &= ~EFL_CF;
 } else {
  x86_saved_state32_t *iss32;

  iss32 = USER_REGS32(parent);

  iss32->eax = pid;
  iss32->edx = 0;
  iss32->efl &= ~EFL_CF;
 }
}
