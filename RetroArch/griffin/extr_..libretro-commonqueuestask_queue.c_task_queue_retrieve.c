
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_retriever_data_t ;
struct TYPE_2__ {int (* retrieve ) (int *) ;} ;


 TYPE_1__* impl_current ;
 int stub1 (int *) ;

void task_queue_retrieve(task_retriever_data_t *data)
{
   impl_current->retrieve(data);
}
