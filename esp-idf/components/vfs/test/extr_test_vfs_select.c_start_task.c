
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_task_param_t ;


 int send_task ;
 int xTaskCreate (int ,char*,int,void*,int,int *) ;

__attribute__((used)) static inline void start_task(const test_task_param_t *test_task_param)
{
    xTaskCreate(send_task, "send_task", 4*1024, (void *) test_task_param, 5, ((void*)0));
}
