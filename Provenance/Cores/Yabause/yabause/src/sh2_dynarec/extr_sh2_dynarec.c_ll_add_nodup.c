
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_entry {int vaddr; struct ll_entry* next; } ;


 int ll_add (struct ll_entry**,int,void*) ;

void ll_add_nodup(struct ll_entry **head,int vaddr,void *addr)
{
  struct ll_entry *ptr;
  ptr=*head;
  while(ptr!=((void*)0)) {
    if(ptr->vaddr==vaddr) {
      return;
    }
    ptr=ptr->next;
  }
  ll_add(head,vaddr,addr);
}
