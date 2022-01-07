
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vm_page_t ;
typedef int boolean_t ;
struct TYPE_7__ {scalar_t__ vmp_fictitious; } ;


 int FALSE ;
 int vm_page_free_prepare_object (TYPE_1__*,int ) ;
 int vm_page_free_prepare_queues (TYPE_1__*) ;
 int vm_page_lockspin_queues () ;
 int vm_page_release (TYPE_1__*,int ) ;
 int vm_page_release_fictitious (TYPE_1__*) ;
 int vm_page_unlock_queues () ;

void
vm_page_free_unlocked(
 vm_page_t mem,
 boolean_t remove_from_hash)
{
 vm_page_lockspin_queues();
 vm_page_free_prepare_queues(mem);
 vm_page_unlock_queues();

 vm_page_free_prepare_object(mem, remove_from_hash);

 if (mem->vmp_fictitious) {
  vm_page_release_fictitious(mem);
 } else {
  vm_page_release(mem, FALSE);
 }
}
