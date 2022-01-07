
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pthread_t ;
typedef int TaskHandle_t ;


 int pthread_get_handle_by_desc ;
 int pthread_list_find_item (int ,void*) ;

__attribute__((used)) static inline TaskHandle_t pthread_find_handle(pthread_t thread)
{
    return pthread_list_find_item(pthread_get_handle_by_desc, (void *)thread);
}
