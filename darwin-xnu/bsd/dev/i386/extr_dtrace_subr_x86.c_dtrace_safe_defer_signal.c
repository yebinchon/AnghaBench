
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct regs {scalar_t__ r_pc; int r_r9; int r_r8; int r_rcx; int r_rax; } ;
struct TYPE_4__ {size_t t_dtrace_npc; size_t t_dtrace_pc; int t_dtrace_on; scalar_t__ t_dtrace_scrpc; scalar_t__ t_dtrace_astpc; int t_dtrace_reg; int t_dtrace_step; int t_dtrace_ast; scalar_t__ t_dtrace_ft; int t_dtrace_regv; } ;
typedef TYPE_1__ kthread_t ;


 int ASSERT (int) ;




 TYPE_1__* curthread ;
 struct regs* lwptoregs (int ) ;
 int ttolwp (TYPE_1__*) ;

int
dtrace_safe_defer_signal(void)
{
 return 0;
}
