
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_4__* vm_page_t ;
typedef int boolean_t ;
struct TYPE_13__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_12__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_11__ {scalar_t__ next; scalar_t__ prev; } ;
struct TYPE_14__ {scalar_t__ vmp_next_m; int vmp_lopage; TYPE_3__ vmp_backgroundq; TYPE_2__ vmp_listq; TYPE_1__ vmp_pageq; int vmp_fictitious; scalar_t__ vmp_private; scalar_t__ vmp_tabled; } ;


 scalar_t__ FALSE ;
 int PAGE_WAKEUP (TYPE_4__*) ;
 int TRUE ;
 int VM_PAGE_GET_PHYS_PAGE (TYPE_4__*) ;
 int VM_PAGE_SET_PHYS_PAGE (TYPE_4__*,int ) ;
 int assert (int) ;
 int vm_page_fictitious_addr ;
 int vm_page_init (TYPE_4__*,int ,int ) ;
 int vm_page_remove (TYPE_4__*,int ) ;

void
vm_page_free_prepare_object(
 vm_page_t mem,
 boolean_t remove_from_hash)
{
 if (mem->vmp_tabled)
  vm_page_remove(mem, remove_from_hash);

 PAGE_WAKEUP(mem);

 if (mem->vmp_private) {
  mem->vmp_private = FALSE;
  mem->vmp_fictitious = TRUE;
  VM_PAGE_SET_PHYS_PAGE(mem, vm_page_fictitious_addr);
 }
 if ( !mem->vmp_fictitious) {
  assert(mem->vmp_pageq.next == 0);
  assert(mem->vmp_pageq.prev == 0);
  assert(mem->vmp_listq.next == 0);
  assert(mem->vmp_listq.prev == 0);




  assert(mem->vmp_next_m == 0);
  vm_page_init(mem, VM_PAGE_GET_PHYS_PAGE(mem), mem->vmp_lopage);
 }
}
