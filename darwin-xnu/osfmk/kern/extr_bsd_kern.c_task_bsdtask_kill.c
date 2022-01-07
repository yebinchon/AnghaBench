
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int SIGKILL ;
 void* get_bsdtask_info (int ) ;
 int psignal (void*,int ) ;

void task_bsdtask_kill(task_t t)
{
 void * bsd_info = get_bsdtask_info(t);
 if (bsd_info != ((void*)0)) {
  psignal(bsd_info, SIGKILL);
 }
}
