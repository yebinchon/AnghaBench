
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ll_entry {int vaddr; struct ll_entry* next; scalar_t__ addr; } ;
typedef int pointer ;


 scalar_t__ HighWram ;
 scalar_t__ LowWram ;
 int MAX_OUTPUT_BLOCK_SIZE ;
 int TARGET_SIZE_2 ;
 int* cached_code ;
 int* cached_code_words ;
 int get_bounds (int ,size_t*,size_t*) ;
 scalar_t__ get_clean_addr (int) ;
 int** hash_table ;
 int inv_debug (char*,int,...) ;
 struct ll_entry** jump_dirty ;
 scalar_t__ jump_in ;
 int ll_add_nodup (scalar_t__,int,void*) ;
 scalar_t__ out ;
 size_t* recent_writes ;
 scalar_t__ verify_dirty (int) ;

void clean_blocks(u32 page)
{
  struct ll_entry *head;
  inv_debug("INV: clean_blocks page=%d\n",page);
  head=jump_dirty[page];
  while(head!=((void*)0)) {
    if((cached_code[head->vaddr>>15]>>((head->vaddr>>12)&7))&1) {;

      if((((u32)head->addr-(u32)out)<<(32-TARGET_SIZE_2))>0x60000000+(MAX_OUTPUT_BLOCK_SIZE<<(32-TARGET_SIZE_2))) {
        u32 start,end,vstart=0,vend;
        if(verify_dirty((int)head->addr)) {

          u32 i;
          u32 inv=0;
          get_bounds((pointer)head->addr,&start,&end);
          if(start-(u32)HighWram<0x100000) {
            vstart=start-(u32)HighWram+0x6000000;
            vend=end-(u32)HighWram+0x6000000;
            for(i=(start-(u32)HighWram+0x6000000)>>12;i<=(end-1-(u32)HighWram+0x6000000)>>12;i++) {

              if(!((cached_code[i>>3]>>(i&7))&1)) inv=1;
            }
          }
          if(start-(u32)LowWram<0x100000) {
            vstart=start-(u32)LowWram+0x200000;
            vend=end-(u32)LowWram+0x200000;
            for(i=(start-(u32)LowWram+0x200000)>>12;i<=(end-1-(u32)LowWram+0x200000)>>12;i++) {

              if(!((cached_code[i>>3]>>(i&7))&1)) inv=1;
            }
          }

          if(vstart) for(i=0;i<8;i++) {
            if(recent_writes[i]>=vstart&&recent_writes[i]<vend) {

              inv=1;
            }
          }
          if(!inv) {
            void * clean_addr=(void *)get_clean_addr((int)head->addr);
            if((((u32)clean_addr-(u32)out)<<(32-TARGET_SIZE_2))>0x60000000+(MAX_OUTPUT_BLOCK_SIZE<<(32-TARGET_SIZE_2))) {
              int *ht_bin;
              inv_debug("INV: Restored %x (%x/%x)\n",head->vaddr, (int)head->addr, (int)clean_addr);


              ll_add_nodup(jump_in+page,head->vaddr,clean_addr);
              ht_bin=hash_table[((head->vaddr>>16)^head->vaddr)&0xFFFF];
              if(ht_bin[0]==head->vaddr) {
                ht_bin[1]=(int)clean_addr;
              }
              if(ht_bin[2]==head->vaddr) {
                ht_bin[3]=(int)clean_addr;
              }
            }
            if(vstart) {

              for(i=0;i<vend-vstart;i+=4) {
                cached_code_words[((vstart<4194304?vstart:((vstart|0x400000)&0x7fffff))+i)>>5]|=1<<(((vstart+i)>>2)&7);
              }
            }
          }
        }
      }
    }
    head=head->next;
  }
}
