
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cr2; int err; int cpu; int trapno; } ;
typedef TYPE_1__ x86_saved_state32_t ;
struct TYPE_6__ {int faultvaddr; int err; int cpu; int trapno; } ;
typedef TYPE_2__ x86_exception_state32_t ;
typedef int thread_t ;


 TYPE_1__* USER_REGS32 (int ) ;

__attribute__((used)) static void
get_exception_state32(thread_t thread, x86_exception_state32_t *es)
{
        x86_saved_state32_t *saved_state;

        saved_state = USER_REGS32(thread);

 es->trapno = saved_state->trapno;
 es->cpu = saved_state->cpu;
 es->err = saved_state->err;
 es->faultvaddr = saved_state->cr2;
}
