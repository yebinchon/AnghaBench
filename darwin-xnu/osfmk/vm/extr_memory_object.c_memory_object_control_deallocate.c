
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memory_object_control_t ;


 int mem_obj_control_zone ;
 int zfree (int ,int ) ;

void
memory_object_control_deallocate(
 memory_object_control_t control)
{
 zfree(mem_obj_control_zone, control);
}
