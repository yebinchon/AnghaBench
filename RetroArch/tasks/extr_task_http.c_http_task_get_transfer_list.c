
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_retriever_info_t ;
struct TYPE_3__ {int element_size; int * list; int func; int handler; } ;
typedef TYPE_1__ task_retriever_data_t ;
typedef int http_transfer_info_t ;


 int task_http_retriever ;
 int task_http_transfer_handler ;
 int task_queue_retrieve (TYPE_1__*) ;

task_retriever_info_t *http_task_get_transfer_list(void)
{
   task_retriever_data_t retrieve_data;


   retrieve_data.handler = task_http_transfer_handler;
   retrieve_data.element_size = sizeof(http_transfer_info_t);
   retrieve_data.func = task_http_retriever;


   task_queue_retrieve(&retrieve_data);

   return retrieve_data.list;
}
