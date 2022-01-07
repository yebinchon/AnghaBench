
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ll_entry {int vaddr; void* addr; struct ll_entry* next; } ;
typedef int pointer ;


 scalar_t__ HighWram ;
 scalar_t__ LowWram ;
 int MAX_OUTPUT_BLOCK_SIZE ;
 int TARGET_SIZE_2 ;
 int* cached_code ;
 int* cached_code_words ;
 int get_bounds (int ,int*,int*) ;
 int** hash_table ;
 struct ll_entry** jump_dirty ;
 struct ll_entry** jump_in ;
 int* memory_map ;
 scalar_t__ out ;
 int* restore_candidate ;
 int sh2_recompile_block (int) ;
 scalar_t__ verify_dirty (void*) ;

void *get_addr(u32 vaddr)
{
  struct ll_entry *head;
  u32 page=(vaddr&0xDFFFFFFF)>>12;
  if(page>1024) page=1024+(page&1023);

  head=jump_in[page];
  while(head!=((void*)0)) {

    if(head->vaddr==vaddr) {


      int *ht_bin=hash_table[((vaddr>>16)^vaddr)&0xFFFF];
      ht_bin[3]=ht_bin[1];
      ht_bin[2]=ht_bin[0];
      ht_bin[1]=(int)head->addr;
      ht_bin[0]=vaddr;

      return head->addr;
    }
    head=head->next;
  }
  head=jump_dirty[page];
  while(head!=((void*)0)) {
    if(head->vaddr==vaddr) {


      if((((u32)head->addr-(u32)out)<<(32-TARGET_SIZE_2))>0x60000000+(MAX_OUTPUT_BLOCK_SIZE<<(32-TARGET_SIZE_2)))
      if(verify_dirty(head->addr)) {
        u32 start,end;
        int *ht_bin;


        cached_code[vaddr>>15]|=1<<((vaddr>>12)&7);
        cached_code[(vaddr^0x20000000)>>15]|=1<<((vaddr>>12)&7);




        memory_map[vaddr>>12]|=0x40000000;
        memory_map[(vaddr^0x20000000)>>12]|=0x40000000;

        restore_candidate[page>>3]|=1<<(page&7);
        get_bounds((pointer)head->addr,&start,&end);
        if(start-(u32)HighWram<0x100000) {
          u32 vstart=start-(u32)HighWram+0x6000000;
          u32 vend=end-(u32)HighWram+0x6000000;
          int i;

          for(i=0;i<vend-vstart;i+=4) {
            cached_code_words[((vstart<4194304?vstart:((vstart|0x400000)&0x7fffff))+i)>>5]|=1<<(((vstart+i)>>2)&7);
          }
        }
        if(start-(u32)LowWram<0x100000) {
          u32 vstart=start-(u32)LowWram+0x200000;
          u32 vend=end-(u32)LowWram+0x200000;
          int i;

          for(i=0;i<vend-vstart;i+=4) {
            cached_code_words[((vstart<4194304?vstart:((vstart|0x400000)&0x7fffff))+i)>>5]|=1<<(((vstart+i)>>2)&7);
          }
        }
        ht_bin=hash_table[((vaddr>>16)^vaddr)&0xFFFF];
        if(ht_bin[0]==vaddr) {
          ht_bin[1]=(int)head->addr;
        }
        else
        {
          ht_bin[3]=ht_bin[1];
          ht_bin[2]=ht_bin[0];
          ht_bin[1]=(int)head->addr;
          ht_bin[0]=vaddr;
        }

        return head->addr;
      }
    }
    head=head->next;
  }
  sh2_recompile_block(vaddr);
  return get_addr(vaddr);
}
