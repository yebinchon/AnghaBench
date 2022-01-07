
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int vm_page_t ;
typedef int vm_object_t ;
typedef int vm_object_offset_t ;


 int FALSE ;
 int TRUE ;
 int vm_page_insert_internal (int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

void
vm_page_insert_wired(
 vm_page_t mem,
 vm_object_t object,
 vm_object_offset_t offset,
 vm_tag_t tag)
{
 vm_page_insert_internal(mem, object, offset, tag, FALSE, TRUE, FALSE, FALSE, ((void*)0));
}
