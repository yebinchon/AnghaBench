
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int gs; int fs; int cs; int rip; int rflags; int rsp; int rbp; int rsi; int rdi; int rdx; int rcx; int rbx; int rax; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; } ;
typedef TYPE_2__ x86_thread_state64_t ;
struct TYPE_6__ {int cs; int rip; int rflags; int rsp; } ;
struct TYPE_8__ {int gs; int fs; TYPE_1__ isf; int rbp; int rsi; int rdi; int rdx; int rcx; int rbx; int rax; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; } ;
typedef TYPE_3__ x86_saved_state64_t ;
typedef int thread_t ;


 TYPE_3__* USER_REGS64 (int ) ;
 int VALID ;
 int pal_register_cache_state (int ,int ) ;

__attribute__((used)) static void
get_thread_state64(thread_t thread, x86_thread_state64_t *ts)
{
        x86_saved_state64_t *saved_state;

 pal_register_cache_state(thread, VALID);

 saved_state = USER_REGS64(thread);

 ts->r8 = saved_state->r8;
 ts->r9 = saved_state->r9;
 ts->r10 = saved_state->r10;
 ts->r11 = saved_state->r11;
 ts->r12 = saved_state->r12;
 ts->r13 = saved_state->r13;
 ts->r14 = saved_state->r14;
 ts->r15 = saved_state->r15;
 ts->rax = saved_state->rax;
 ts->rbx = saved_state->rbx;
 ts->rcx = saved_state->rcx;
 ts->rdx = saved_state->rdx;
 ts->rdi = saved_state->rdi;
 ts->rsi = saved_state->rsi;
 ts->rbp = saved_state->rbp;
 ts->rsp = saved_state->isf.rsp;
 ts->rflags = saved_state->isf.rflags;
 ts->rip = saved_state->isf.rip;
 ts->cs = saved_state->isf.cs;
 ts->fs = saved_state->fs;
 ts->gs = saved_state->gs;
}
