
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_page_t ;


 int TRUE ;
 int vm_page_free_prepare_object (int ,int ) ;
 int vm_page_free_prepare_queues (int ) ;

__attribute__((used)) static void
vm_page_free_prepare(
 vm_page_t mem)
{
 vm_page_free_prepare_queues(mem);
 vm_page_free_prepare_object(mem, TRUE);
}
