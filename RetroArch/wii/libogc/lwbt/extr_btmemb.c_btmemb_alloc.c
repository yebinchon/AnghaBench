
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct memb_blks {scalar_t__ num; int size; scalar_t__ mem; } ;
typedef scalar_t__ s32 ;


 int MEM_ALIGN_SIZE (int ) ;
 int _CPU_ISR_Disable (scalar_t__) ;
 int _CPU_ISR_Restore (scalar_t__) ;

void* btmemb_alloc(struct memb_blks *blk)
{
 s32 i;
 u32 *ptr;
 u32 level;
 void *p;

 _CPU_ISR_Disable(level);
 ptr = (u32*)blk->mem;
 for(i=0;i<blk->num;i++) {
  if(*ptr==0) {
   ++(*ptr);
   p = (ptr+1);
   _CPU_ISR_Restore(level);
   return p;
  }
  ptr = (u32*)((u8*)ptr+(MEM_ALIGN_SIZE(blk->size)+sizeof(u32)));
 }
 _CPU_ISR_Restore(level);
 return ((void*)0);
}
