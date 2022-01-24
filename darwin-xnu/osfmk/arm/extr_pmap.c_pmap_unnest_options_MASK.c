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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  pmap_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  addr64_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  PMAP__UNNEST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

kern_return_t
FUNC4(
	pmap_t grand,
	addr64_t vaddr,
	uint64_t size,
	unsigned int option)
{
	kern_return_t kr = KERN_FAILURE;

	FUNC1(2, FUNC0(PMAP__UNNEST) | DBG_FUNC_START,
	           FUNC2(grand), FUNC2(vaddr));

	kr = FUNC3(grand, vaddr, size, option);

	FUNC1(2, FUNC0(PMAP__UNNEST) | DBG_FUNC_END, kr);

	return kr;
}