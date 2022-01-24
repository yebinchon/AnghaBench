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
struct waitq_set {scalar_t__ wqset_id; } ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (struct waitq_set*) ; 

boolean_t
FUNC1(struct waitq_set *wqset)
{
	if (FUNC0(wqset) || wqset->wqset_id == 0) {
		return FALSE;
	}
	return TRUE;
}