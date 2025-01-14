
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32 ;
struct mem {int next; int prev; scalar_t__ used; } ;


 int ERROR (char*) ;
 int MEM_ALIGNMENT ;
 int MEM_SIZE ;
 int MIN_SIZE ;
 int SIZEOF_STRUCT_MEM ;
 int _CPU_ISR_Disable (int) ;
 int _CPU_ISR_Restore (int) ;
 int plug_holes (struct mem*) ;
 int * ram_block ;
 scalar_t__ ram_end ;

void* btmemr_realloc(void *ptr,u32 newsize)
{
 u32 level;
 u32 size,ptr1,ptr2;
 struct mem *rmem,*rmem2;

 if(newsize%MEM_ALIGNMENT) newsize += MEM_ALIGNMENT - ((newsize + SIZEOF_STRUCT_MEM)%MEM_ALIGNMENT);
 if(newsize>MEM_SIZE) return ((void*)0);
 if((u8_t*)ptr<(u8_t*)ram_block || (u8_t*)ptr>=(u8_t*)ram_end) {
  ERROR("memr_realloc: illegal memory.\n");
  return ptr;
 }

 _CPU_ISR_Disable(level);
 rmem = (struct mem*)((u8_t*)ptr - SIZEOF_STRUCT_MEM);
 ptr1 = (u8_t*)rmem - ram_block;
 size = rmem->next - ptr1 - SIZEOF_STRUCT_MEM;

 if(newsize+SIZEOF_STRUCT_MEM+MIN_SIZE<size) {
  ptr2 = ptr1 + SIZEOF_STRUCT_MEM + newsize;
  rmem2 = (struct mem*)&ram_block[ptr2];
  rmem2->used = 0;
  rmem2->next = rmem->next;
  rmem2->prev = ptr1;
  rmem->next = ptr2;
  if(rmem2->next!=MEM_SIZE) ((struct mem*)&ram_block[rmem2->next])->prev = ptr2;

  plug_holes(rmem2);
 }
 _CPU_ISR_Restore(level);

 return ptr;
}
