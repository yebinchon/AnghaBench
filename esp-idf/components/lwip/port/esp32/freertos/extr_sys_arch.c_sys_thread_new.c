
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sys_thread_t ;
typedef int lwip_thread_fn ;
typedef int TaskHandle_t ;
typedef scalar_t__ BaseType_t ;


 int CONFIG_LWIP_TCPIP_TASK_AFFINITY ;
 scalar_t__ pdTRUE ;
 scalar_t__ xTaskCreatePinnedToCore (int ,char const*,int,void*,int,int *,int ) ;

sys_thread_t
sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio)
{
  TaskHandle_t rtos_task;
  BaseType_t ret;



  ret = xTaskCreatePinnedToCore(thread, name, stacksize, arg, prio, &rtos_task,
          CONFIG_LWIP_TCPIP_TASK_AFFINITY);

  if (ret != pdTRUE) {
    return ((void*)0);
  }

  return (sys_thread_t)rtos_task;
}
