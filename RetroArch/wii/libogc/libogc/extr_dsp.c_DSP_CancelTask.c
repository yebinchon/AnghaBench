
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ dsptask_t ;


 int DSPTASK_CANCEL ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;

void DSP_CancelTask(dsptask_t *task)
{
 u32 level;

 _CPU_ISR_Disable(level);
 task->flags |= DSPTASK_CANCEL;
 _CPU_ISR_Restore(level);
}
