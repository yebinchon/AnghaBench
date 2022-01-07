
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arm_saved_state {int * r; } ;


 int kprintf (char*,int ) ;

void
syscall_trace(
       struct arm_saved_state * regs)
{
 kprintf("syscall: %d\n", regs->r[12]);
}
