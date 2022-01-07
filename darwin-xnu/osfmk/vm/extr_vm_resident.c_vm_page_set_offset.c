
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int vm_object_offset_t ;
struct TYPE_3__ {int vmp_offset; } ;



void
vm_page_set_offset(vm_page_t page, vm_object_offset_t offset)
{
 page->vmp_offset = offset;
}
