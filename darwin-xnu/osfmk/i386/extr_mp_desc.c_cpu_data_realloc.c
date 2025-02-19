
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int x86_64_intr_stack_frame_t ;
typedef scalar_t__ vm_offset_t ;
typedef int uint8_t ;
struct cpu_desc_table {int dummy; } ;
struct TYPE_9__ {int * fstkp; } ;
typedef TYPE_2__ cpu_desc_table64_t ;
struct TYPE_8__ {int queue; } ;
struct TYPE_10__ {size_t cpu_number; struct cpu_desc_table* cpu_desc_tablep; TYPE_1__ rtclock_timer; scalar_t__ cpu_int_stack_top; struct TYPE_10__* cpu_this; } ;
typedef TYPE_3__ cpu_data_t ;
typedef int boolean_t ;
struct TYPE_12__ {void* ist1; void* ist2; } ;
struct TYPE_11__ {int * fstk; } ;


 void* DBLMAP (uintptr_t) ;
 int FALSE ;
 int FSTK_SZ ;
 scalar_t__ INTSTACK_SIZE ;
 int KERN_SUCCESS ;
 int MSR_IA32_GS_BASE ;
 int MSR_IA32_KERNEL_GS_BASE ;
 int VM_KERN_MEMORY_CPU ;
 int assert (int) ;
 int bcopy (void*,void*,int) ;
 int bzero (void*,scalar_t__) ;
 TYPE_3__** cpu_data_ptr ;
 scalar_t__ cpu_number () ;
 int kernel_map ;
 int kmem_alloc (int ,scalar_t__*,scalar_t__,int ) ;
 int kprintf (char*,void*,void*,void*) ;
 TYPE_6__ master_ktss64 ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*,int) ;
 TYPE_3__* scdatas ;
 int * scdtables ;
 TYPE_4__* scfstks ;
 int timer_call_queue_init (int *) ;
 int wrmsr64 (int ,uintptr_t) ;

void
cpu_data_realloc(void)
{
 int ret;
 vm_offset_t istk;
 cpu_data_t *cdp;
 boolean_t istate;

 ret = kmem_alloc(kernel_map, &istk, INTSTACK_SIZE, VM_KERN_MEMORY_CPU);
 if (ret != KERN_SUCCESS) {
  panic("cpu_data_realloc() stack alloc, ret=%d\n", ret);
 }
 bzero((void*) istk, INTSTACK_SIZE);
 istk += INTSTACK_SIZE;

 cdp = &scdatas[0];


 assert(cpu_number() == 0);
 bcopy((void *) cpu_data_ptr[0], (void*) cdp, sizeof(cpu_data_t));
 cdp->cpu_this = cdp;
 cdp->cpu_int_stack_top = istk;
 timer_call_queue_init(&cdp->rtclock_timer.queue);
 cdp->cpu_desc_tablep = (struct cpu_desc_table *) &scdtables[0];
 cpu_desc_table64_t *cdt = (cpu_desc_table64_t *) cdp->cpu_desc_tablep;

 uint8_t *cfstk = &scfstks[cdp->cpu_number].fstk[0];
 cdt->fstkp = cfstk;
 cfstk += FSTK_SZ;




 istate = ml_set_interrupts_enabled(FALSE);
 cpu_data_ptr[0] = cdp;
 master_ktss64.ist2 = DBLMAP((uintptr_t) cfstk);
 master_ktss64.ist1 = DBLMAP((uintptr_t) cfstk - sizeof(x86_64_intr_stack_frame_t));
 wrmsr64(MSR_IA32_GS_BASE, (uintptr_t) cdp);
 wrmsr64(MSR_IA32_KERNEL_GS_BASE, (uintptr_t) cdp);
 (void) ml_set_interrupts_enabled(istate);

 kprintf("Reallocated master cpu data: %p,"
  " interrupt stack: %p, fault stack: %p\n",
  (void *) cdp, (void *) istk, (void *) cfstk);
}
