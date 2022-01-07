
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ vm_tag_t ;
struct TYPE_6__ {int flags; scalar_t__ tag; } ;
typedef TYPE_1__ vm_allocation_site_t ;


 scalar_t__ VM_KERN_MEMORY_NONE ;
 int VM_TAG_BT ;
 int kern_allocation_name_release (TYPE_1__*) ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int vm_allocation_sites_lock ;
 int vm_tag_alloc_locked (TYPE_1__*,TYPE_1__**) ;
 scalar_t__ vm_tag_bt () ;

vm_tag_t
vm_tag_alloc(vm_allocation_site_t * site)
{
    vm_tag_t tag;
    vm_allocation_site_t * releasesite;

    if (VM_TAG_BT & site->flags)
    {
  tag = vm_tag_bt();
  if (VM_KERN_MEMORY_NONE != tag) return (tag);
    }

    if (!site->tag)
    {
  releasesite = ((void*)0);
  lck_spin_lock(&vm_allocation_sites_lock);
  vm_tag_alloc_locked(site, &releasesite);
  lck_spin_unlock(&vm_allocation_sites_lock);
        if (releasesite) kern_allocation_name_release(releasesite);
    }

    return (site->tag);
}
