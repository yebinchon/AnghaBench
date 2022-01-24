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
struct ll_entry {int vaddr; struct ll_entry* next; void* addr; scalar_t__ reg32; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ll_entry* FUNC1 (int) ; 

void FUNC2(struct ll_entry **head,int vaddr,void *addr)
{
  struct ll_entry *new_entry;
  new_entry=FUNC1(sizeof(struct ll_entry));
  FUNC0(new_entry!=NULL);
  new_entry->vaddr=vaddr;
  new_entry->reg32=0;
  new_entry->addr=addr;
  new_entry->next=*head;
  *head=new_entry;
}