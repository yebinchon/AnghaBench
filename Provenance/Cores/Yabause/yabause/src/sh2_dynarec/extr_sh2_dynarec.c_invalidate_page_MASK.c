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
typedef  size_t u32 ;
struct ll_entry {struct ll_entry* next; scalar_t__ addr; int /*<<< orphan*/  vaddr; } ;

/* Variables and functions */
 scalar_t__ BASE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct ll_entry*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 struct ll_entry** jump_in ; 
 struct ll_entry** jump_out ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int* needs_clear_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(u32 page)
{
  struct ll_entry *head;
  struct ll_entry *next;
  head=jump_in[page];
  jump_in[page]=0;
  while(head!=NULL) {
    FUNC1("INVALIDATE: %x\n",head->vaddr);
    FUNC3(head->vaddr);
    next=head->next;
    FUNC0(head);
    head=next;
  }
  head=jump_out[page];
  jump_out[page]=0;
  while(head!=NULL) {
    u32 host_addr;
    FUNC1("INVALIDATE: kill pointer to %x (%x)\n",head->vaddr,(int)head->addr);
    host_addr=(u32)FUNC2(head->addr);
    #ifdef __arm__
      needs_clear_cache[(host_addr-(u32)BASE_ADDR)>>17]|=1<<(((host_addr-(u32)BASE_ADDR)>>12)&31);
    #endif
    next=head->next;
    FUNC0(head);
    head=next;
  }
}