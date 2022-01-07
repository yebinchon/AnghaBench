
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_3__* coalition_t ;
struct TYPE_8__ {int other; int services; int extensions; int leader; } ;
struct TYPE_7__ {int tasks; } ;
struct TYPE_9__ {int type; TYPE_2__ j; TYPE_1__ r; } ;




 int PAGE_SIZE_64 ;
 int coalition_lock (TYPE_3__*) ;
 int coalition_unlock (TYPE_3__*) ;
 int get_task_phys_footprint (int ) ;
 int i_get_list_footprint (int *,int const,int*) ;

uint64_t coalition_get_page_count(coalition_t coal, int *ntasks)
{
 uint64_t bytes = 0;
 int num_tasks = 0;

 if (ntasks)
  *ntasks = 0;
 if (!coal)
  return bytes;

 coalition_lock(coal);

 switch (coal->type) {
 case 128:
  bytes += i_get_list_footprint(&coal->r.tasks, 128, &num_tasks);
  break;
 case 129:
  if (coal->j.leader) {
   bytes += get_task_phys_footprint(coal->j.leader);
   num_tasks = 1;
  }
  bytes += i_get_list_footprint(&coal->j.extensions, 129, &num_tasks);
  bytes += i_get_list_footprint(&coal->j.services, 129, &num_tasks);
  bytes += i_get_list_footprint(&coal->j.other, 129, &num_tasks);
  break;
 default:
  break;
 }

 coalition_unlock(coal);

 if (ntasks)
  *ntasks = num_tasks;

 return bytes / PAGE_SIZE_64;
}
