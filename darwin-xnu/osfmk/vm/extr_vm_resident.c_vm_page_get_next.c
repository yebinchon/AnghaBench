
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_4__ {struct TYPE_4__* vmp_snext; } ;



vm_page_t
vm_page_get_next(vm_page_t page)
{
 return (page->vmp_snext);
}
