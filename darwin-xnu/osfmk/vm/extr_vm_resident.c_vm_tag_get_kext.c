
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t vm_tag_t ;
typedef int vm_size_t ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ vm_allocation_site_t ;
typedef scalar_t__ uint32_t ;


 scalar_t__ OSKextGetKmodIDForSite (TYPE_1__*,char*,int ) ;
 int VM_TAG_KMOD ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 TYPE_1__** vm_allocation_sites ;
 int vm_allocation_sites_lock ;

uint32_t
vm_tag_get_kext(vm_tag_t tag, char * name, vm_size_t namelen)
{
    vm_allocation_site_t * site;
    uint32_t kmodId;

    kmodId = 0;
    lck_spin_lock(&vm_allocation_sites_lock);
    if ((site = vm_allocation_sites[tag]))
    {
        if (VM_TAG_KMOD & site->flags)
        {
            kmodId = OSKextGetKmodIDForSite(site, name, namelen);
        }
    }
    lck_spin_unlock(&vm_allocation_sites_lock);

    return (kmodId);
}
