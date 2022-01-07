
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int assert (int) ;
 int* cached_code_words ;
 int invalidate_blocks (int,int) ;
 int invalidate_count ;
 size_t recent_write_index ;
 int* recent_writes ;
 int* restore_candidate ;

void invalidate_addr(u32 addr)
{
  u32 index=addr&0xDFFFFFFF;
  if(index>4194304) index=(addr|0x400000)&0x7fffff;
  if(!((cached_code_words[index>>5]>>((index>>2)&7))&1)) {


    if(invalidate_count++<500) {
      if((restore_candidate[index>>15]>>((index>>12)&7))&1) {
        recent_writes[recent_write_index]=addr;
        recent_write_index=(recent_write_index+1)&7;
      }
      return;
    }
  }



  invalidate_blocks(addr>>12,addr>>12);
  assert(!((cached_code_words[index>>5]>>((index>>2)&7))&1));



  recent_writes[recent_write_index]=addr;
  recent_write_index=(recent_write_index+1)&7;
}
