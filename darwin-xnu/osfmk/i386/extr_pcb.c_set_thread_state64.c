
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int rflags; scalar_t__ gs; scalar_t__ fs; int rip; int rsp; int rbp; int rsi; int rdi; int rdx; int rcx; int rbx; int rax; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; } ;
typedef TYPE_2__ x86_thread_state64_t ;
struct TYPE_6__ {int rflags; int cs; int rip; int rsp; } ;
struct TYPE_8__ {void* gs; void* fs; TYPE_1__ isf; int rbp; int rsi; int rdi; int rdx; int rcx; int rbx; int rax; int r15; int r14; int r13; int r12; int r11; int r10; int r9; int r8; } ;
typedef TYPE_3__ x86_saved_state64_t ;
typedef void* uint32_t ;
typedef int thread_t ;


 int DIRTY ;
 int EFL_USER_CLEAR ;
 int EFL_USER_SET ;
 int IS_USERADDR64_CANONICAL (int ) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int USER64_CS ;
 TYPE_3__* USER_REGS64 (int ) ;
 int pal_register_cache_state (int ,int ) ;

__attribute__((used)) static int
set_thread_state64(thread_t thread, x86_thread_state64_t *ts)
{
        x86_saved_state64_t *saved_state;

 pal_register_cache_state(thread, DIRTY);

 saved_state = USER_REGS64(thread);

 if (!IS_USERADDR64_CANONICAL(ts->rsp) ||
     !IS_USERADDR64_CANONICAL(ts->rip))
  return(KERN_INVALID_ARGUMENT);

 saved_state->r8 = ts->r8;
 saved_state->r9 = ts->r9;
 saved_state->r10 = ts->r10;
 saved_state->r11 = ts->r11;
 saved_state->r12 = ts->r12;
 saved_state->r13 = ts->r13;
 saved_state->r14 = ts->r14;
 saved_state->r15 = ts->r15;
 saved_state->rax = ts->rax;
 saved_state->rbx = ts->rbx;
 saved_state->rcx = ts->rcx;
 saved_state->rdx = ts->rdx;
 saved_state->rdi = ts->rdi;
 saved_state->rsi = ts->rsi;
 saved_state->rbp = ts->rbp;
 saved_state->isf.rsp = ts->rsp;
 saved_state->isf.rflags = (ts->rflags & ~EFL_USER_CLEAR) | EFL_USER_SET;
 saved_state->isf.rip = ts->rip;
 saved_state->isf.cs = USER64_CS;
 saved_state->fs = (uint32_t)ts->fs;
 saved_state->gs = (uint32_t)ts->gs;

 return(KERN_SUCCESS);
}
