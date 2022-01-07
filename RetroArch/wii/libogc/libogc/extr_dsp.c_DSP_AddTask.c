
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int flags; int state; } ;
typedef TYPE_1__ dsptask_t ;


 int DSPTASK_ATTACH ;
 int DSPTASK_INIT ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int __dsp_boottask (TYPE_1__*) ;
 TYPE_1__* __dsp_firsttask ;
 int __dsp_inserttask (TYPE_1__*) ;

dsptask_t* DSP_AddTask(dsptask_t *task)
{
 u32 level;
 _CPU_ISR_Disable(level);
 __dsp_inserttask(task);
 task->state = DSPTASK_INIT;
 task->flags = DSPTASK_ATTACH;
 _CPU_ISR_Restore(level);

 if(__dsp_firsttask==task) __dsp_boottask(task);
 return task;
}
