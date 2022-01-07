
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_entry {int vaddr; struct ll_entry* next; void* addr; scalar_t__ reg32; } ;


 int assert (int ) ;
 struct ll_entry* malloc (int) ;

void ll_add(struct ll_entry **head,int vaddr,void *addr)
{
  struct ll_entry *new_entry;
  new_entry=malloc(sizeof(struct ll_entry));
  assert(new_entry!=((void*)0));
  new_entry->vaddr=vaddr;
  new_entry->reg32=0;
  new_entry->addr=addr;
  new_entry->next=*head;
  *head=new_entry;
}
