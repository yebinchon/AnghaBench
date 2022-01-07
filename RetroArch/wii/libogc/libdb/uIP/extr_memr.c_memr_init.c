
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem {size_t next; size_t prev; int used; } ;


 int UIP_MEMSET (int *,int ,size_t) ;
 size_t UIP_MEM_SIZE ;
 int * ram_block ;
 struct mem* ram_end ;
 struct mem* ram_free ;

void memr_init()
{
 struct mem *rmem;

 UIP_MEMSET(ram_block,0,UIP_MEM_SIZE);
 rmem = (struct mem*)ram_block;
 rmem->next = UIP_MEM_SIZE;
 rmem->prev = 0;
 rmem->used = 0;

 ram_end = (struct mem*)&ram_block[UIP_MEM_SIZE];
 ram_end->used = 1;
 ram_end->prev = UIP_MEM_SIZE;
 ram_end->next = UIP_MEM_SIZE;

 ram_free = (struct mem*)ram_block;
}
