
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_task_t ;


 int strdup (char const*) ;
 int task_free_title (int *) ;
 int task_set_finished (int *,int) ;
 int task_set_progress (int *,int) ;
 int task_set_title (int *,int ) ;

__attribute__((used)) static void finish_task(retro_task_t *task, const char *title)
{
   task_set_progress(task, 100);
   task_free_title(task);
   task_set_title(task, strdup(title));
   task_set_finished(task, 1);
}
