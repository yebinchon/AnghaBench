
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ll_entry {struct ll_entry* next; scalar_t__ addr; int vaddr; } ;


 scalar_t__ BASE_ADDR ;
 int MAX_OUTPUT_BLOCK_SIZE ;
 int get_pointer (scalar_t__) ;
 int inv_debug (char*,int,int,...) ;
 scalar_t__ kill_pointer (scalar_t__) ;
 int* needs_clear_cache ;

void ll_kill_pointers(struct ll_entry *head,int addr,int shift)
{
  while(head) {
    int ptr=get_pointer(head->addr);
    inv_debug("EXP: Lookup pointer to %x at %x (%x)\n",(int)ptr,(int)head->addr,head->vaddr);
    if(((ptr>>shift)==(addr>>shift)) ||
       (((ptr-MAX_OUTPUT_BLOCK_SIZE)>>shift)==(addr>>shift)))
    {
      u32 host_addr;
      inv_debug("EXP: Kill pointer at %x (%x)\n",(int)head->addr,head->vaddr);
      host_addr=(u32)kill_pointer(head->addr);



    }
    head=head->next;
  }
}
