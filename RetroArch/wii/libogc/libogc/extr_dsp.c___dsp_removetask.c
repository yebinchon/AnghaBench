
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; struct TYPE_6__* prev; int state; int flags; } ;
typedef TYPE_1__ dsptask_t ;


 int DSPTASK_CLEARALL ;
 int DSPTASK_DONE ;
 TYPE_1__* __dsp_currtask ;
 TYPE_1__* __dsp_firsttask ;
 TYPE_1__* __dsp_lasttask ;

__attribute__((used)) static void __dsp_removetask(dsptask_t *task)
{
 task->flags = DSPTASK_CLEARALL;
 task->state = DSPTASK_DONE;
 if(__dsp_firsttask==task) {
  if(task->next) {
   __dsp_firsttask = task->next;
   __dsp_firsttask->prev = ((void*)0);
   return;
  }
  __dsp_currtask = ((void*)0);
  __dsp_lasttask = ((void*)0);
  __dsp_firsttask = ((void*)0);
  return;
 }
 if(__dsp_lasttask==task) {
  __dsp_lasttask = task->prev;
  __dsp_lasttask->next = ((void*)0);
  __dsp_currtask = __dsp_firsttask;
  return;
 }
 __dsp_currtask = __dsp_currtask->next;
}
