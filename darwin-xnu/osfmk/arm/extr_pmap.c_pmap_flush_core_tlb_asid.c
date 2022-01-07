
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int asid; } ;


 int TLBI_ASID_SHIFT ;
 int flush_core_tlb_asid (int) ;

__attribute__((used)) static void
pmap_flush_core_tlb_asid(pmap_t pmap)
{



 flush_core_tlb_asid(((uint64_t) pmap->asid) << TLBI_ASID_SHIFT);

}
