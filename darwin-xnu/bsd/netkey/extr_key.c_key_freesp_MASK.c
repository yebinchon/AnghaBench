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
struct secpolicy {int refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYDEBUG_IPSEC_STAMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ FUNC2 (struct secpolicy*) ; 
 int /*<<< orphan*/  FUNC3 (struct secpolicy*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sadb_mutex ; 

void
FUNC8(
		   struct secpolicy *sp,
		   int locked)
{
	
	/* sanity check */
	if (sp == NULL)
		FUNC6("key_freesp: NULL pointer is passed.\n");
	
	if (!locked)
		FUNC4(sadb_mutex);
	else
		FUNC1(sadb_mutex, LCK_MTX_ASSERT_OWNED);
	sp->refcnt--;
	FUNC0(KEYDEBUG_IPSEC_STAMP,
	    FUNC7("DP freesp cause refcnt--:%d SP:0x%llx\n",
	    sp->refcnt, (uint64_t)FUNC2(sp)));
	
	if (sp->refcnt == 0)
		FUNC3(sp);
	if (!locked)
		FUNC5(sadb_mutex);
	return;
}