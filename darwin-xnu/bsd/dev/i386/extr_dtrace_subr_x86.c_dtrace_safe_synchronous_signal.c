
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct regs {scalar_t__ r_pc; } ;
struct TYPE_4__ {size_t t_dtrace_npc; size_t t_dtrace_pc; scalar_t__ t_dtrace_scrpc; scalar_t__ t_dtrace_astpc; scalar_t__ t_dtrace_ft; int t_dtrace_on; } ;
typedef TYPE_1__ kthread_t ;


 int ASSERT (int ) ;
 TYPE_1__* curthread ;
 struct regs* lwptoregs (int ) ;
 int ttolwp (TYPE_1__*) ;

void
dtrace_safe_synchronous_signal(void)
{
}
