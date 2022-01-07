
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32 ;
struct mem {scalar_t__ used; } ;


 int * SIZEOF_STRUCT_MEM ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int plug_holes (struct mem*) ;
 scalar_t__ ram_block ;
 scalar_t__ ram_end ;
 struct mem* ram_free ;

void btmemr_free(void *ptr)
{
 u32 level;
 struct mem *rmem;

 if(ptr==((void*)0)) return;
 if((u8_t*)ptr<(u8_t*)ram_block || (u8_t*)ptr>=(u8_t*)ram_end) return;

 _CPU_ISR_Disable(level);
 rmem = (struct mem*)((u8_t*)ptr - SIZEOF_STRUCT_MEM);
 rmem->used = 0;

 if(rmem<ram_free) ram_free = rmem;

 plug_holes(rmem);
 _CPU_ISR_Restore(level);
}
