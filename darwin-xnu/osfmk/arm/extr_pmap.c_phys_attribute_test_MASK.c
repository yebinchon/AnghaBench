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
typedef  scalar_t__ ppnum_t ;
typedef  int /*<<< orphan*/  pmap_paddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ vm_page_fictitious_addr ; 

__attribute__((used)) static boolean_t
FUNC3(
	ppnum_t pn,
	unsigned int bits)
{
	pmap_paddr_t    pa = FUNC2(pn);
	FUNC0(pn != vm_page_fictitious_addr);
	return FUNC1(pa, bits);
}