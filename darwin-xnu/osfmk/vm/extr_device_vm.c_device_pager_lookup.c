
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* memory_object_t ;
typedef TYPE_2__* device_pager_t ;
struct TYPE_6__ {scalar_t__ ref_count; } ;
struct TYPE_5__ {int * mo_pager_ops; } ;


 int assert (int) ;
 int device_pager_ops ;

device_pager_t
device_pager_lookup(
 memory_object_t mem_obj)
{
 device_pager_t device_object;

 assert(mem_obj->mo_pager_ops == &device_pager_ops);
 device_object = (device_pager_t)mem_obj;
 assert(device_object->ref_count > 0);
 return device_object;
}
