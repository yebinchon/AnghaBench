
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct sysent {int sy_return_type; } ;
typedef int arm_saved_state_t ;
struct TYPE_6__ {int pc; int save_r0; int save_r1; int cpsr; } ;
typedef TYPE_2__ arm_saved_state32_t ;
struct TYPE_5__ {int* uu_rval; } ;


 int EJUSTRETURN ;
 int ERESTART ;
 int PSR_CF ;
 int assert (int ) ;
 int is_saved_state32 (int *) ;
 int panic (char*) ;
 TYPE_2__* saved_state32 (int *) ;
 int unix_syscall_return_kprintf (char*) ;

__attribute__((used)) static void
arm_prepare_u32_syscall_return(struct sysent *callp, arm_saved_state_t *regs, uthread_t uthread, int error)
{
 assert(is_saved_state32(regs));

 arm_saved_state32_t *ss32 = saved_state32(regs);

 if (error == ERESTART) {
  ss32->pc -= 4;
 } else if (error != EJUSTRETURN) {
  if (error) {
   ss32->save_r0 = error;
   ss32->save_r1 = 0;

   ss32->cpsr |= PSR_CF;
   unix_syscall_return_kprintf("error: setting carry to trigger cerror call\n");
  } else {
   switch (callp->sy_return_type) {
   case 134:
   case 128:
   case 132:
   case 135:
   case 131:
   case 130:
   case 129:
    ss32->save_r0 = uthread->uu_rval[0];
    ss32->save_r1 = uthread->uu_rval[1];
    break;
   case 133:
    ss32->save_r0 = 0;
    ss32->save_r1 = 0;
    break;
   default:
    panic("unix_syscall: unknown return type");
    break;
   }
  }
 }


}
