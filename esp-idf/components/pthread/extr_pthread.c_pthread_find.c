
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_pthread_t ;
typedef int TaskHandle_t ;


 int pthread_get_desc_by_handle ;
 int * pthread_list_find_item (int ,int ) ;

__attribute__((used)) static esp_pthread_t *pthread_find(TaskHandle_t task_handle)
{
    return pthread_list_find_item(pthread_get_desc_by_handle, task_handle);
}
