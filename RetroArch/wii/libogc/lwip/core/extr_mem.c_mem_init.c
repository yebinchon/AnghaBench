
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mem {size_t next; size_t prev; int used; } ;
struct TYPE_3__ {size_t avail; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;


 int LWP_SemInit (int *,int,int) ;
 size_t MEM_SIZE ;
 struct mem* lfree ;
 TYPE_2__ lwip_stats ;
 int mem_sem ;
 int memset (int *,int ,size_t) ;
 int * ram ;
 struct mem* ram_end ;

void
mem_init(void)
{
  struct mem *mem;

  memset(ram, 0, MEM_SIZE);
  mem = (struct mem *)ram;
  mem->next = MEM_SIZE;
  mem->prev = 0;
  mem->used = 0;
  ram_end = (struct mem *)&ram[MEM_SIZE];
  ram_end->used = 1;
  ram_end->next = MEM_SIZE;
  ram_end->prev = MEM_SIZE;

  LWP_SemInit(&mem_sem,1,1);

  lfree = (struct mem *)ram;




}
