
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* memory_object_t ;
typedef int memory_object_offset_t ;
typedef int memory_object_cluster_size_t ;
typedef int kern_return_t ;
struct TYPE_6__ {TYPE_1__* mo_pager_ops; } ;
struct TYPE_5__ {int (* memory_object_data_initialize ) (TYPE_2__*,int ,int ) ;} ;


 int stub1 (TYPE_2__*,int ,int ) ;

kern_return_t memory_object_data_initialize
(
 memory_object_t memory_object,
 memory_object_offset_t offset,
 memory_object_cluster_size_t size
)
{
 return (memory_object->mo_pager_ops->memory_object_data_initialize)(
  memory_object,
  offset,
  size);
}
