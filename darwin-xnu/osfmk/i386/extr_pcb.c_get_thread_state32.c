
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gs; int fs; int es; int ds; int ss; int cs; int eip; int eflags; int esp; int ebp; int esi; int edi; int edx; int ecx; int ebx; int eax; } ;
typedef TYPE_1__ x86_thread_state32_t ;
struct TYPE_6__ {int gs; int fs; int es; int ds; int ss; int cs; int eip; int efl; int uesp; int ebp; int esi; int edi; int edx; int ecx; int ebx; int eax; } ;
typedef TYPE_2__ x86_saved_state32_t ;
typedef int thread_t ;


 TYPE_2__* USER_REGS32 (int ) ;
 int VALID ;
 int pal_register_cache_state (int ,int ) ;

__attribute__((used)) static void
get_thread_state32(thread_t thread, x86_thread_state32_t *ts)
{
        x86_saved_state32_t *saved_state;

 pal_register_cache_state(thread, VALID);

 saved_state = USER_REGS32(thread);

 ts->eax = saved_state->eax;
 ts->ebx = saved_state->ebx;
 ts->ecx = saved_state->ecx;
 ts->edx = saved_state->edx;
 ts->edi = saved_state->edi;
 ts->esi = saved_state->esi;
 ts->ebp = saved_state->ebp;
 ts->esp = saved_state->uesp;
 ts->eflags = saved_state->efl;
 ts->eip = saved_state->eip;
 ts->cs = saved_state->cs;
 ts->ss = saved_state->ss;
 ts->ds = saved_state->ds;
 ts->es = saved_state->es;
 ts->fs = saved_state->fs;
 ts->gs = saved_state->gs;
}
