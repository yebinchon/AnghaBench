
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_2__* memory_object_t ;
typedef int kern_return_t ;
struct TYPE_6__ {TYPE_1__* mo_pager_ops; } ;
struct TYPE_5__ {int (* memory_object_map ) (TYPE_2__*,int ) ;} ;


 int stub1 (TYPE_2__*,int ) ;

kern_return_t memory_object_map
(
 memory_object_t memory_object,
 vm_prot_t prot
)
{
 return (memory_object->mo_pager_ops->memory_object_map)(
  memory_object,
  prot);
}
