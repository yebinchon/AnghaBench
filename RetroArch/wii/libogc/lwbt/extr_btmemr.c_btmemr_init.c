
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mem {size_t next; size_t prev; int used; } ;


 int MEMSET (int *,int ,size_t) ;
 size_t MEM_SIZE ;
 int _CPU_ISR_Disable (int ) ;
 int _CPU_ISR_Restore (int ) ;
 int * ram_block ;
 struct mem* ram_end ;
 struct mem* ram_free ;

void btmemr_init()
{
 u32 level;
 struct mem *rmem;

 MEMSET(ram_block,0,MEM_SIZE);

 _CPU_ISR_Disable(level);
 rmem = (struct mem*)ram_block;
 rmem->next = MEM_SIZE;
 rmem->prev = 0;
 rmem->used = 0;

 ram_end = (struct mem*)&ram_block[MEM_SIZE];
 ram_end->used = 1;
 ram_end->prev = MEM_SIZE;
 ram_end->next = MEM_SIZE;

 ram_free = (struct mem*)ram_block;
 _CPU_ISR_Restore(level);
}
