
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_entry {struct ll_entry* next; } ;


 int free (struct ll_entry*) ;

void ll_clear(struct ll_entry **head)
{
  struct ll_entry *cur;
  struct ll_entry *next;
  if(cur=*head) {
    *head=0;
    while(cur) {
      next=cur->next;
      free(cur);
      cur=next;
    }
  }
}
