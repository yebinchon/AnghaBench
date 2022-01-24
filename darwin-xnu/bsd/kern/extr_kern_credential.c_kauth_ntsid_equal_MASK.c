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
typedef  int /*<<< orphan*/  ntsid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int
FUNC2(ntsid_t *sid1, ntsid_t *sid2)
{
	/* check sizes for equality, also sanity-check size while we're at it */
	if ((FUNC0(sid1) == FUNC0(sid2)) &&
	    (FUNC0(sid1) <= sizeof(*sid1)) &&
	    FUNC1(sid1, sid2, FUNC0(sid1)) == 0)
		return(1);
	return(0);
}