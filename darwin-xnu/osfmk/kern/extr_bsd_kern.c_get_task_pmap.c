
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* task_t ;
typedef int pmap_t ;
struct TYPE_5__ {TYPE_1__* map; } ;
struct TYPE_4__ {int pmap; } ;



pmap_t get_task_pmap(task_t t)
{
 return(t->map->pmap);
}
