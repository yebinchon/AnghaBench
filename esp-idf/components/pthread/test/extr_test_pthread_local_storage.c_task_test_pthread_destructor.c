
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int thread_test_pthread_destructor (void*) ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void task_test_pthread_destructor(void *v_key)
{

    thread_test_pthread_destructor(v_key);
    vTaskDelete(((void*)0));
}
