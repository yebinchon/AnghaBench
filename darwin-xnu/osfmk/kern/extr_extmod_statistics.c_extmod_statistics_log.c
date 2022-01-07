
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int fslog_extmod_msgtracer (void*,void*) ;
 void* get_bsdtask_info (int ) ;

__attribute__((used)) static void
extmod_statistics_log(task_t current_task, task_t target)
{
 void *c_proc;
 void *t_proc;

 c_proc = get_bsdtask_info(current_task);
 t_proc = get_bsdtask_info(target);
 if (c_proc && t_proc) {
  fslog_extmod_msgtracer(c_proc, t_proc);
 }
}
