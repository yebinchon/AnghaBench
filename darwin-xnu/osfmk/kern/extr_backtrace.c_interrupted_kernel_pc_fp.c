
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int x86_saved_state_t ;
typedef int uint64_t ;
typedef int kern_return_t ;
struct TYPE_8__ {int * cpu_int_state; } ;
struct TYPE_7__ {int cs; uintptr_t eip; uintptr_t ebp; } ;
struct TYPE_5__ {int cs; uintptr_t rip; } ;
struct TYPE_6__ {uintptr_t rbp; TYPE_1__ isf; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 int SEL_PL ;
 int SEL_PL_U ;
 TYPE_4__* current_cpu_datap () ;
 int is_saved_state64 (int *) ;
 TYPE_3__* saved_state32 (int *) ;
 TYPE_2__* saved_state64 (int *) ;

__attribute__((used)) static kern_return_t
interrupted_kernel_pc_fp(uintptr_t *pc, uintptr_t *fp)
{
 x86_saved_state_t *state;
 bool state_64;
 uint64_t cs;

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
  *pc = saved_state64(state)->isf.rip;
  *fp = saved_state64(state)->rbp;
 } else {
  *pc = saved_state32(state)->eip;
  *fp = saved_state32(state)->ebp;
 }
 return KERN_SUCCESS;
}
