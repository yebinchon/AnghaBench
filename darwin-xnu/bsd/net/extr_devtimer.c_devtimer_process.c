
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* devtimer_timeout_func ) (int ,int ,int ) ;
typedef TYPE_1__* devtimer_ref ;
typedef int (* devtimer_process_func ) (TYPE_1__*,int ) ;
struct TYPE_6__ {int dt_generation; int dt_arg2; int dt_arg1; int dt_arg0; int (* dt_timeout_func ) (int ,int ,int ) ;int (* dt_process_func ) (TYPE_1__*,int ) ;} ;


 int devtimer_process_func_event_lock ;
 int devtimer_process_func_event_unlock ;
 int devtimer_release (TYPE_1__*) ;
 int stub1 (TYPE_1__*,int ) ;
 int stub2 (int ,int ,int ) ;
 int stub3 (TYPE_1__*,int ) ;

__attribute__((used)) static void
devtimer_process(void * param0, void * param1)
{
    int generation = *(int*)param1;
    devtimer_process_func process_func;
    devtimer_timeout_func timeout_func;
    devtimer_ref timer = (devtimer_ref)param0;

    process_func = timer->dt_process_func;
    if (process_func != ((void*)0)) {
 (*process_func)(timer, devtimer_process_func_event_lock);
    }
    timeout_func = timer->dt_timeout_func;
    if (timeout_func != ((void*)0)) {
 timer->dt_timeout_func = ((void*)0);
 if (timer->dt_generation == generation) {
     (*timeout_func)(timer->dt_arg0, timer->dt_arg1, timer->dt_arg2);
 }
    }
    devtimer_release(timer);
    if (process_func != ((void*)0)) {
 (*process_func)(timer, devtimer_process_func_event_unlock);
    }
    return;
}
