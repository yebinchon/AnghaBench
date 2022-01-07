
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct mem {scalar_t__ next; scalar_t__ prev; scalar_t__ used; } ;
typedef scalar_t__ mem_size_t ;
struct TYPE_3__ {int used; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;


 int LWIP_ASSERT (char*,int) ;
 int LWIP_DEBUGF (int,char*) ;
 int LWP_SemPost (int ) ;
 int LWP_SemWait (int ) ;
 scalar_t__ MEM_ALIGNMENT ;
 int MEM_DEBUG ;
 scalar_t__ MEM_SIZE ;
 scalar_t__ MIN_SIZE ;
 int SIZEOF_STRUCT_MEM ;
 TYPE_2__ lwip_stats ;
 int mem_sem ;
 int plug_holes (struct mem*) ;
 int * ram ;
 scalar_t__ ram_end ;

void *
mem_realloc(void *rmem, mem_size_t newsize)
{
  mem_size_t size;
  mem_size_t ptr, ptr2;
  struct mem *mem, *mem2;



  if ((newsize % MEM_ALIGNMENT) != 0) {
   newsize += MEM_ALIGNMENT - ((newsize + SIZEOF_STRUCT_MEM) % MEM_ALIGNMENT);
  }

  if (newsize > MEM_SIZE) {
    return ((void*)0);
  }

  LWP_SemWait(mem_sem);

  LWIP_ASSERT("mem_realloc: legal memory", (u8_t *)rmem >= (u8_t *)ram &&
   (u8_t *)rmem < (u8_t *)ram_end);

  if ((u8_t *)rmem < (u8_t *)ram || (u8_t *)rmem >= (u8_t *)ram_end) {
    LWIP_DEBUGF(MEM_DEBUG | 3, ("mem_realloc: illegal memory\n"));
    return rmem;
  }
  mem = (struct mem *)((u8_t *)rmem - SIZEOF_STRUCT_MEM);

  ptr = (u8_t *)mem - ram;

  size = mem->next - ptr - SIZEOF_STRUCT_MEM;




  if (newsize + SIZEOF_STRUCT_MEM + MIN_SIZE < size) {
    ptr2 = ptr + SIZEOF_STRUCT_MEM + newsize;
    mem2 = (struct mem *)&ram[ptr2];
    mem2->used = 0;
    mem2->next = mem->next;
    mem2->prev = ptr;
    mem->next = ptr2;
    if (mem2->next != MEM_SIZE) {
      ((struct mem *)&ram[mem2->next])->prev = ptr2;
    }

    plug_holes(mem2);
  }
  LWP_SemPost(mem_sem);
  return rmem;
}
