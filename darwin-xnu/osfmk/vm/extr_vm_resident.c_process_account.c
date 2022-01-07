
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef unsigned int vm_tag_t ;
typedef int vm_size_t ;
struct TYPE_12__ {scalar_t__ total; int wastediv; int waste; scalar_t__ peak; } ;
typedef TYPE_2__ vm_allocation_zone_total_t ;
struct TYPE_13__ {scalar_t__ mapped; scalar_t__ total; size_t subtotalscount; size_t flags; TYPE_1__* subtotals; scalar_t__ peak; int tag; } ;
typedef TYPE_3__ vm_allocation_site_t ;
typedef scalar_t__ uint64_t ;
typedef size_t uint32_t ;
struct TYPE_14__ {scalar_t__ mapped; scalar_t__ size; unsigned int site; int collectable_bytes; scalar_t__* name; scalar_t__ peak; int flags; int zone; int tag; } ;
typedef TYPE_4__ mach_memory_info_t ;
typedef int boolean_t ;
struct TYPE_11__ {unsigned int tag; } ;


 int KA_NAME (TYPE_3__*) ;
 unsigned int OSKextGetKmodIDForSite (TYPE_3__*,int *,int ) ;
 unsigned int VM_KERNEL_UNSLIDE (TYPE_3__*) ;
 unsigned int VM_KERN_MEMORY_FIRST_DYNAMIC ;
 unsigned int VM_KERN_MEMORY_ZONE ;
 int VM_KERN_SITE_HIDE ;
 int VM_KERN_SITE_KERNEL ;
 int VM_KERN_SITE_KMOD ;
 int VM_KERN_SITE_NAMED ;
 int VM_KERN_SITE_TAG ;
 int VM_KERN_SITE_WIRED ;
 int VM_KERN_SITE_ZONE ;
 unsigned int VM_MAX_TAG_ZONES ;
 int VM_TAG_KMOD ;
 size_t VM_TAG_NAME_LEN_MAX ;
 size_t VM_TAG_NAME_LEN_SHIFT ;
 int assert (int) ;
 int lck_spin_lock (int *) ;
 int lck_spin_unlock (int *) ;
 int printf (char*,unsigned int,scalar_t__,scalar_t__) ;
 int strncpy (scalar_t__*,int ,size_t) ;
 TYPE_3__** vm_allocation_sites ;
 int vm_allocation_sites_lock ;
 unsigned int vm_allocation_tag_highest ;
 TYPE_2__** vm_allocation_zone_totals ;
 int zone_index_from_tag_index (unsigned int,int*) ;

__attribute__((used)) static uint64_t
process_account(mach_memory_info_t * info, unsigned int num_info, uint64_t zones_collectable_bytes, boolean_t iterated)
{
    size_t namelen;
    unsigned int idx, count, nextinfo;
    vm_allocation_site_t * site;
 lck_spin_lock(&vm_allocation_sites_lock);

 for (idx = 0; idx <= vm_allocation_tag_highest; idx++)
    {
  site = vm_allocation_sites[idx];
  if (!site) continue;
  info[idx].mapped = site->mapped;
  info[idx].tag = site->tag;
        if (!iterated)
        {
   info[idx].size = site->total;



        }
        else
        {
   if (!site->subtotalscount && (site->total != info[idx].size))
   {
       printf("tag mismatch[%d] 0x%qx, iter 0x%qx\n", idx, site->total, info[idx].size);
       info[idx].size = site->total;
   }
        }
    }

    nextinfo = (vm_allocation_tag_highest + 1);
    count = nextinfo;
    if (count >= num_info) count = num_info;

    for (idx = 0; idx < count; idx++)
    {
  site = vm_allocation_sites[idx];
  if (!site) continue;
  info[idx].flags |= VM_KERN_SITE_WIRED;
  if (idx < VM_KERN_MEMORY_FIRST_DYNAMIC)
  {
      info[idx].site = idx;
      info[idx].flags |= VM_KERN_SITE_TAG;
      if (VM_KERN_MEMORY_ZONE == idx)
      {
    info[idx].flags |= VM_KERN_SITE_HIDE;
    info[idx].flags &= ~VM_KERN_SITE_WIRED;
    info[idx].collectable_bytes = zones_collectable_bytes;
   }
  }
  else if ((namelen = (VM_TAG_NAME_LEN_MAX & (site->flags >> VM_TAG_NAME_LEN_SHIFT))))
  {
      info[idx].site = 0;
      info[idx].flags |= VM_KERN_SITE_NAMED;
      if (namelen > sizeof(info[idx].name)) namelen = sizeof(info[idx].name);
      strncpy(&info[idx].name[0], KA_NAME(site), namelen);
  }
  else if (VM_TAG_KMOD & site->flags)
  {
      info[idx].site = OSKextGetKmodIDForSite(site, ((void*)0), 0);
      info[idx].flags |= VM_KERN_SITE_KMOD;
  }
  else
  {
      info[idx].site = VM_KERNEL_UNSLIDE(site);
      info[idx].flags |= VM_KERN_SITE_KERNEL;
  }
        if (site->subtotalscount)
        {
   uint64_t mapped, mapcost, take;
   uint32_t sub;
   vm_tag_t alloctag;

            info[idx].size = site->total;
            mapped = info[idx].size;
            info[idx].mapped = mapped;
            mapcost = 0;
            for (sub = 0; sub < site->subtotalscount; sub++)
            {
    alloctag = site->subtotals[sub].tag;
    assert(alloctag < num_info);
    if (info[alloctag].name[0]) continue;
    take = info[alloctag].mapped;
    if (take > info[alloctag].size) take = info[alloctag].size;
    if (take > mapped) take = mapped;
    info[alloctag].mapped -= take;
    info[alloctag].size -= take;
    mapped -= take;
    mapcost += take;
            }
            info[idx].size = mapcost;
        }
 }
 lck_spin_unlock(&vm_allocation_sites_lock);

    return (0);
}
