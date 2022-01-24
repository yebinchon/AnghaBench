#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ll_entry {int vaddr; struct ll_entry* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ll_entry**,int,void*) ; 

void FUNC1(struct ll_entry **head,int vaddr,void *addr)
{
  struct ll_entry *ptr;
  ptr=*head;
  while(ptr!=NULL) {
    if(ptr->vaddr==vaddr) {
      return;
    }
    ptr=ptr->next;
  }
  FUNC0(head,vaddr,addr);
}