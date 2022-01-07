
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int task_t ;


 int THREAD_QOS_LEGACY ;
 int THREAD_QOS_USER_INITIATED ;
 int task_compute_main_thread_qos (int ) ;

int
task_get_default_manager_qos(task_t task)
{
 int primordial_qos = task_compute_main_thread_qos(task);

 if (primordial_qos == THREAD_QOS_LEGACY)
  primordial_qos = THREAD_QOS_USER_INITIATED;

 return primordial_qos;
}
