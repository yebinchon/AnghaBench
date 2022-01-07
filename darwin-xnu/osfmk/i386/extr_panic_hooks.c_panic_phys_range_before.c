
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {scalar_t__ phys_start; int len; int type; } ;
typedef TYPE_1__ panic_phys_range_t ;
struct TYPE_8__ {int MemoryMapDescriptorSize; int const MemoryMapSize; scalar_t__ MemoryMap; } ;
typedef TYPE_2__ boot_args ;
typedef int boolean_t ;
struct TYPE_10__ {TYPE_2__* bootArgs; } ;
struct TYPE_9__ {scalar_t__ PhysicalStart; int NumberOfPages; int Type; } ;
typedef TYPE_3__ EfiMemoryRange ;


 int FALSE ;
 int PAGE_SIZE ;
 TYPE_6__ PE_state ;
 TYPE_3__* PHYSMAP_PTOV (uintptr_t) ;
 int TRUE ;
 scalar_t__ kvtophys (int ) ;

boolean_t panic_phys_range_before(const void *addr, uint64_t *pphys,
        panic_phys_range_t *range)
{
 *pphys = kvtophys((vm_offset_t)addr);

 const boot_args *args = PE_state.bootArgs;

 if (!kvtophys((vm_offset_t)args))
  return FALSE;

 const EfiMemoryRange *r = PHYSMAP_PTOV((uintptr_t)args->MemoryMap), *closest = ((void*)0);
 const uint32_t size = args->MemoryMapDescriptorSize;
 const uint32_t count = args->MemoryMapSize / size;

 if (count > 1024)
  return FALSE;

 for (uint32_t i = 0; i < count; ++i, r = (const EfiMemoryRange *)(const void *)((const uint8_t *)r + size)) {
  if (r->PhysicalStart + r->NumberOfPages * PAGE_SIZE > *pphys)
   continue;

  if (!closest || r->PhysicalStart > closest->PhysicalStart)
   closest = r;
 }

 if (!closest)
  return FALSE;

 range->type = closest->Type;
 range->phys_start = closest->PhysicalStart;
 range->len = closest->NumberOfPages * PAGE_SIZE;

 return TRUE;
}
