
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct ll_entry {struct ll_entry* next; scalar_t__ addr; int vaddr; } ;


 scalar_t__ BASE_ADDR ;
 int free (struct ll_entry*) ;
 int inv_debug (char*,int ,...) ;
 struct ll_entry** jump_in ;
 struct ll_entry** jump_out ;
 scalar_t__ kill_pointer (scalar_t__) ;
 int* needs_clear_cache ;
 int remove_hash (int ) ;

void invalidate_page(u32 page)
{
  struct ll_entry *head;
  struct ll_entry *next;
  head=jump_in[page];
  jump_in[page]=0;
  while(head!=((void*)0)) {
    inv_debug("INVALIDATE: %x\n",head->vaddr);
    remove_hash(head->vaddr);
    next=head->next;
    free(head);
    head=next;
  }
  head=jump_out[page];
  jump_out[page]=0;
  while(head!=((void*)0)) {
    u32 host_addr;
    inv_debug("INVALIDATE: kill pointer to %x (%x)\n",head->vaddr,(int)head->addr);
    host_addr=(u32)kill_pointer(head->addr);



    next=head->next;
    free(head);
    head=next;
  }
}
