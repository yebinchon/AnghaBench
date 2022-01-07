
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* memory_object_t ;
struct TYPE_6__ {TYPE_1__* mo_pager_ops; } ;
struct TYPE_5__ {int (* memory_object_reference ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

void memory_object_reference(
 memory_object_t memory_object)
{
 (memory_object->mo_pager_ops->memory_object_reference)(
  memory_object);
}
