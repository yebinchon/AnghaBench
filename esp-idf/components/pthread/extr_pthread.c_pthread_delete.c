
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_pthread_t ;


 int SLIST_REMOVE (int *,int *,int ,int ) ;
 int esp_pthread_entry ;
 int free (int *) ;
 int list_node ;
 int s_threads_list ;

__attribute__((used)) static void pthread_delete(esp_pthread_t *pthread)
{
    SLIST_REMOVE(&s_threads_list, pthread, esp_pthread_entry, list_node);
    free(pthread);
}
