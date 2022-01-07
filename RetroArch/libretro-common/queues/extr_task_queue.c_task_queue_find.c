
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int userdata; int func; } ;
typedef TYPE_1__ task_finder_data_t ;
struct TYPE_5__ {int (* find ) (int ,int ) ;} ;


 TYPE_3__* impl_current ;
 int stub1 (int ,int ) ;

bool task_queue_find(task_finder_data_t *find_data)
{
   if (!impl_current->find(find_data->func, find_data->userdata))
      return 0;
   return 1;
}
