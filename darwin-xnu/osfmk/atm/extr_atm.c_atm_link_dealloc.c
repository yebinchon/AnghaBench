
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* atm_link_object_t ;
struct TYPE_4__ {int descriptor; } ;


 int atm_link_objects_zone ;
 int atm_task_descriptor_dealloc (int ) ;
 int zfree (int ,TYPE_1__*) ;

__attribute__((used)) static void
atm_link_dealloc(atm_link_object_t link_object)
{

 atm_task_descriptor_dealloc(link_object->descriptor);
 zfree(atm_link_objects_zone, link_object);
}
