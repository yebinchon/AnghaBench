
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atm_task_descriptor_t ;


 int atm_task_desc_reference_internal (int ) ;

__attribute__((used)) static void
atm_descriptor_get_reference(atm_task_descriptor_t task_descriptor)
{
 atm_task_desc_reference_internal(task_descriptor);
}
