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
typedef  int /*<<< orphan*/  lck_rw_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;
typedef  int /*<<< orphan*/  lck_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

lck_rw_t *
FUNC3(
	lck_grp_t	*grp,
	lck_attr_t	*attr) {
	lck_rw_t	*lck;

	if ((lck = (lck_rw_t *)FUNC1(sizeof(lck_rw_t))) != 0) {
		FUNC0(lck, sizeof(lck_rw_t));
		FUNC2(lck, grp, attr);
	}

	return(lck);
}