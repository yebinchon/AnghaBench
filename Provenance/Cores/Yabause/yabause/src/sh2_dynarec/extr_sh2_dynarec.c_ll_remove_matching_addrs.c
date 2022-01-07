
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ll_entry {struct ll_entry* next; int vaddr; scalar_t__ addr; } ;


 char* MAX_OUTPUT_BLOCK_SIZE ;
 int free (struct ll_entry*) ;
 int inv_debug (char*,int,int ) ;
 int remove_hash (int ) ;

void ll_remove_matching_addrs(struct ll_entry **head,int addr,int shift)
{
  struct ll_entry *next;
  while(*head) {
    if(((u32)((*head)->addr)>>shift)==(addr>>shift) ||
       ((u32)(((char *)(*head)->addr)-MAX_OUTPUT_BLOCK_SIZE)>>shift)==(addr>>shift))
    {
      inv_debug("EXP: Remove pointer to %x (%x)\n",(int)(*head)->addr,(*head)->vaddr);
      remove_hash((*head)->vaddr);
      next=(*head)->next;
      free(*head);
      *head=next;
    }
    else
    {
      head=&((*head)->next);
    }
  }
}
