
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ cs; int eflags; int gs; int fs; void* es; void* ds; void* ss; int eip; int esp; int ebp; int esi; int edi; int edx; int ecx; int ebx; int eax; } ;
typedef TYPE_2__ x86_thread_state32_t ;
struct TYPE_12__ {int efl; scalar_t__ cs; int gs; int fs; void* es; void* ds; void* ss; int eip; int uesp; int ebp; int esi; int edi; int edx; int ecx; int ebx; int eax; } ;
typedef TYPE_3__ x86_saved_state32_t ;
typedef TYPE_4__* thread_t ;
struct TYPE_10__ {scalar_t__ cthread_self; } ;
struct TYPE_13__ {TYPE_1__ machine; } ;


 int DIRTY ;
 int EFL_TF ;
 int EFL_USER_CLEAR ;
 int EFL_USER_SET ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int NULL_SEG ;
 scalar_t__ SYSENTER_CS ;
 scalar_t__ SYSENTER_TF_CS ;
 scalar_t__ USER_CS ;
 int USER_CTHREAD ;
 void* USER_DS ;
 TYPE_3__* USER_REGS32 (TYPE_4__*) ;
 int pal_register_cache_state (TYPE_4__*,int ) ;
 int valid_user_segment_selectors (scalar_t__,void*,void*,void*,int ,int ) ;

__attribute__((used)) static int
set_thread_state32(thread_t thread, x86_thread_state32_t *ts)
{
        x86_saved_state32_t *saved_state;

 pal_register_cache_state(thread, DIRTY);

 saved_state = USER_REGS32(thread);




 ts->cs = USER_CS;






 ts->ss = USER_DS;
 ts->ds = USER_DS;
 ts->es = USER_DS;


 ts->gs = thread->machine.cthread_self ? USER_CTHREAD : NULL_SEG;


 if (!valid_user_segment_selectors(ts->cs,
       ts->ss,
       ts->ds,
       ts->es,
       ts->fs,
       ts->gs))
  return(KERN_INVALID_ARGUMENT);

 saved_state->eax = ts->eax;
 saved_state->ebx = ts->ebx;
 saved_state->ecx = ts->ecx;
 saved_state->edx = ts->edx;
 saved_state->edi = ts->edi;
 saved_state->esi = ts->esi;
 saved_state->ebp = ts->ebp;
 saved_state->uesp = ts->esp;
 saved_state->efl = (ts->eflags & ~EFL_USER_CLEAR) | EFL_USER_SET;
 saved_state->eip = ts->eip;
 saved_state->cs = ts->cs;
 saved_state->ss = ts->ss;
 saved_state->ds = ts->ds;
 saved_state->es = ts->es;
 saved_state->fs = ts->fs;
 saved_state->gs = ts->gs;






 if ((saved_state->efl & EFL_TF) && saved_state->cs == SYSENTER_CS)
  saved_state->cs = SYSENTER_TF_CS;

 return(KERN_SUCCESS);
}
