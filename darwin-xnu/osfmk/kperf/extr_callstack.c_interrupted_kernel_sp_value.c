
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int x86_saved_state_t ;
typedef int uint64_t ;
typedef int kern_return_t ;
struct TYPE_10__ {int * cpu_int_state; } ;
struct TYPE_9__ {uintptr_t kernel_stack; } ;
struct TYPE_8__ {int cs; uintptr_t uesp; } ;
struct TYPE_6__ {int cs; uintptr_t rsp; } ;
struct TYPE_7__ {TYPE_1__ isf; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int SEL_PL ;
 int SEL_PL_U ;
 TYPE_5__* current_cpu_datap () ;
 TYPE_4__* current_thread () ;
 int is_saved_state64 (int *) ;
 uintptr_t kernel_stack_size ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;

__attribute__((used)) __attribute__((used))
static kern_return_t
interrupted_kernel_sp_value(uintptr_t *sp_val)
{
 x86_saved_state_t *state;
 uintptr_t sp;
 bool state_64;
 uint64_t cs;
 uintptr_t top, bottom;

 state = current_cpu_datap()->cpu_int_state;
 if (!state) {
  return KERN_FAILURE;
 }

 state_64 = is_saved_state64(state);

 if (state_64) {
  cs = saved_state64(state)->isf.cs;
 } else {
  cs = saved_state32(state)->cs;
 }

 if ((cs & SEL_PL) == SEL_PL_U) {
  return KERN_FAILURE;
 }

 if (state_64) {
  sp = saved_state64(state)->isf.rsp;
 } else {
  sp = saved_state32(state)->uesp;
 }


 bottom = current_thread()->kernel_stack;
 top = bottom + kernel_stack_size;
 if (sp >= bottom && sp < top) {
     return KERN_FAILURE;
 }

 *sp_val = *(uintptr_t *)sp;
 return KERN_SUCCESS;
}
