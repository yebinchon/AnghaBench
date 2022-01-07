
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
struct TYPE_6__ {scalar_t__ vmp_fictitious; } ;


 int TRUE ;
 int vm_page_free_prepare (TYPE_1__*) ;
 int vm_page_release (TYPE_1__*,int ) ;
 int vm_page_release_fictitious (TYPE_1__*) ;

void
vm_page_free(
 vm_page_t mem)
{
 vm_page_free_prepare(mem);

 if (mem->vmp_fictitious) {
  vm_page_release_fictitious(mem);
 } else {
  vm_page_release(mem,
    TRUE);
 }
}
