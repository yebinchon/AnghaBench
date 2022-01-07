
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_1__* task_t ;
struct TYPE_3__ {int map; } ;



vm_map_t get_task_map(task_t t)
{
 return(t->map);
}
