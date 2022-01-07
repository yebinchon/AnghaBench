
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memory_object_t ;


 int memory_object_deallocate (int ) ;
 int memory_object_terminate (int ) ;

__attribute__((used)) static void
vm_object_release_pager(
 memory_object_t pager)
{





 (void) memory_object_terminate(pager);




 memory_object_deallocate(pager);
}
