#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t vm_prot_t ;
typedef  int /*<<< orphan*/  addr64_t ;
struct TYPE_2__ {char* p_comm; int p_pid; } ;

/* Variables and functions */
 size_t VM_PROT_ALL ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * prot_values ; 

void
FUNC2(addr64_t vaddr, vm_prot_t prot)
{
	FUNC1("Data/Stack execution not permitted: %s[pid %d] at virtual address 0x%qx, protections were %s\n", 
		FUNC0()->p_comm, FUNC0()->p_pid, vaddr, prot_values[prot & VM_PROT_ALL]);
}