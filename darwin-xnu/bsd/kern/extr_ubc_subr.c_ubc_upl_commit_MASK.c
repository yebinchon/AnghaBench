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
typedef  int /*<<< orphan*/  upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int MAX_UPL_SIZE_BYTES ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(
	upl_t 			upl)
{
	upl_page_info_t	*pl;
	kern_return_t 	kr;

	pl = FUNC0(upl);
	kr = FUNC1(upl, pl, MAX_UPL_SIZE_BYTES >> PAGE_SHIFT);
	FUNC2(upl);
	return kr;
}