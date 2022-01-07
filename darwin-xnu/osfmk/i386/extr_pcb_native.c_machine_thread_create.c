
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_17__ {void* efl; void* gs; void* fs; void* es; void* ds; void* ss; int cs; } ;
struct TYPE_15__ {void* rflags; void* ss; int cs; } ;
struct TYPE_16__ {TYPE_2__ isf; void* gs; void* fs; } ;
struct TYPE_18__ {TYPE_4__ ss_32; int flavor; TYPE_3__ ss_64; } ;
typedef TYPE_5__ x86_saved_state_t ;
typedef TYPE_6__* thread_t ;
typedef int task_t ;
typedef TYPE_7__* pcb_t ;
typedef int kern_return_t ;
struct TYPE_13__ {int access; } ;
struct TYPE_20__ {TYPE_10__ cthread_desc; scalar_t__ thread_gpu_ns; scalar_t__ uldt_selector; scalar_t__ cthread_self; int lock; TYPE_5__* iss; } ;
struct TYPE_14__ {scalar_t__ physwindow_busy; scalar_t__ physwindow_pte; } ;
struct TYPE_19__ {TYPE_1__ machine; } ;


 int ACC_P ;
 void* EFL_USER_SET ;
 int KERN_SUCCESS ;
 TYPE_7__* THREAD_TO_PCB (TYPE_6__*) ;
 int USER64_CS ;
 int USER_CS ;
 void* USER_DS ;
 int assert (int) ;
 int bzero (char*,int) ;
 TYPE_10__* gdt_desc_p (void*) ;
 scalar_t__ get_preemption_level () ;
 int inval_copy_windows (TYPE_6__*) ;
 int iss_zone ;
 int panic (char*) ;
 int simple_lock_init (int *,int ) ;
 scalar_t__ task_has_64Bit_addr (int ) ;
 int x86_SAVED_STATE32 ;
 int x86_SAVED_STATE64 ;
 scalar_t__ zalloc (int ) ;

kern_return_t
machine_thread_create(
 thread_t thread,
 task_t task)
{
        pcb_t pcb = THREAD_TO_PCB(thread);
 if (pcb->iss == ((void*)0)) {
  assert((get_preemption_level() == 0));
  pcb->iss = (x86_saved_state_t *) zalloc(iss_zone);
  if (pcb->iss == ((void*)0))
   panic("iss_zone");
 }






 assert(sizeof(pcb->iss->ss_32) + sizeof(pcb->iss->ss_64.isf) <=
        sizeof(pcb->iss->ss_64));

 bzero((char *)pcb->iss, sizeof(x86_saved_state_t));

        if (task_has_64Bit_addr(task)) {
  pcb->iss->flavor = x86_SAVED_STATE64;

  pcb->iss->ss_64.isf.cs = USER64_CS;
  pcb->iss->ss_64.isf.ss = USER_DS;
  pcb->iss->ss_64.fs = USER_DS;
  pcb->iss->ss_64.gs = USER_DS;
  pcb->iss->ss_64.isf.rflags = EFL_USER_SET;
 } else {
  pcb->iss->flavor = x86_SAVED_STATE32;

  pcb->iss->ss_32.cs = USER_CS;
  pcb->iss->ss_32.ss = USER_DS;
  pcb->iss->ss_32.ds = USER_DS;
  pcb->iss->ss_32.es = USER_DS;
  pcb->iss->ss_32.fs = USER_DS;
  pcb->iss->ss_32.gs = USER_DS;
  pcb->iss->ss_32.efl = EFL_USER_SET;
 }

 simple_lock_init(&pcb->lock, 0);

 pcb->cthread_self = 0;
 pcb->uldt_selector = 0;
 pcb->thread_gpu_ns = 0;



 if ((pcb->cthread_desc.access & ACC_P) == 0) {
  pcb->cthread_desc = *gdt_desc_p(USER_DS);
 }

 return(KERN_SUCCESS);
}
