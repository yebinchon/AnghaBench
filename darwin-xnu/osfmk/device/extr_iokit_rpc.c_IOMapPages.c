
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef TYPE_1__* vm_map_t ;
typedef int vm_map_offset_t ;
typedef int uint32_t ;
typedef scalar_t__ ppnum_t ;
typedef int pmap_t ;
typedef int mach_vm_size_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int pmap; } ;


 unsigned int IODefaultCacheBits (scalar_t__) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 unsigned int VM_WIMG_COPYBACK ;
 unsigned int VM_WIMG_INNERWBACK ;
 unsigned int VM_WIMG_IO ;
 unsigned int VM_WIMG_POSTED ;
 unsigned int VM_WIMG_WCOMB ;
 unsigned int VM_WIMG_WTHRU ;
 scalar_t__ atop_64 (scalar_t__) ;
 unsigned int kIOMapCacheMask ;





 unsigned int kIOMapReadOnly ;


 int pmap_map_block (int ,scalar_t__,scalar_t__,int ,int,int ,int ) ;
 int pmap_set_cache_attributes (scalar_t__,unsigned int) ;
 scalar_t__ round_page_64 (int ) ;
 int vm_map_set_cache_attr (TYPE_1__*,int ) ;

kern_return_t IOMapPages(vm_map_t map, mach_vm_address_t va, mach_vm_address_t pa,
   mach_vm_size_t length, unsigned int options)
{
    vm_prot_t prot;
    unsigned int flags;
    ppnum_t pagenum;
    pmap_t pmap = map->pmap;

    prot = (options & kIOMapReadOnly)
  ? VM_PROT_READ : (VM_PROT_READ|VM_PROT_WRITE);

    pagenum = (ppnum_t)atop_64(pa);

    switch(options & kIOMapCacheMask ) {

 case 132:
 default:
     flags = IODefaultCacheBits(pa);
     break;

 case 131:
     flags = VM_WIMG_IO;
     break;

 case 128:
     flags = VM_WIMG_WTHRU;
     break;

 case 129:
     flags = VM_WIMG_WCOMB;
     break;

 case 134:
     flags = VM_WIMG_COPYBACK;
     break;

 case 133:
     flags = VM_WIMG_INNERWBACK;
     break;

 case 130:
     flags = VM_WIMG_POSTED;
     break;
    }

    pmap_set_cache_attributes(pagenum, flags);

    vm_map_set_cache_attr(map, (vm_map_offset_t)va);



    return pmap_map_block(pmap, va, pagenum, (uint32_t) atop_64(round_page_64(length)), prot, 0, 0);
}
