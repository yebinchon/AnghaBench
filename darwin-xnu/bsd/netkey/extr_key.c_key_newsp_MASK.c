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
struct secpolicy {int refcnt; int /*<<< orphan*/ * req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_NOTOWNED ; 
 struct secpolicy* FUNC1 () ; 
 int /*<<< orphan*/  sadb_mutex ; 

struct secpolicy *
FUNC2(void)
{
	struct secpolicy *newsp = NULL;
	
	FUNC0(sadb_mutex, LCK_MTX_ASSERT_NOTOWNED);
	newsp = FUNC1();
	if (!newsp)
		return newsp;
	
	newsp->refcnt = 1;
	newsp->req = NULL;
	
	return newsp;
}