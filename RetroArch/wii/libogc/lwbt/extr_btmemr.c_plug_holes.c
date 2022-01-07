
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct mem {size_t next; scalar_t__ used; int prev; } ;


 int * ram_block ;
 scalar_t__ ram_end ;
 struct mem* ram_free ;

__attribute__((used)) static void plug_holes(struct mem *rmem)
{
 struct mem *nmem;
 struct mem *pmem;

 nmem = (struct mem*)&ram_block[rmem->next];
 if(rmem!=nmem && nmem->used==0 && (u8_t*)nmem!=(u8_t*)ram_end) {
  if(ram_free==nmem) ram_free = rmem;

  rmem->next = nmem->next;
  ((struct mem*)&ram_block[nmem->next])->prev = (u8_t*)rmem - ram_block;
 }

 pmem = (struct mem*)&ram_block[rmem->prev];
 if(pmem!=rmem && pmem->used==0) {
  if(ram_free==rmem) ram_free = pmem;
  pmem->next = rmem->next;
  ((struct mem*)&ram_block[rmem->next])->prev = (u8_t*)pmem - ram_block;
 }
}
