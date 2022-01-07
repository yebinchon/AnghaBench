
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* memory_object_control_t ;
struct TYPE_3__ {scalar_t__ moc_object; } ;


 scalar_t__ VM_OBJECT_NULL ;
 int assert (int) ;

void
memory_object_control_disable(
 memory_object_control_t control)
{
 assert(control->moc_object != VM_OBJECT_NULL);
 control->moc_object = VM_OBJECT_NULL;
}
