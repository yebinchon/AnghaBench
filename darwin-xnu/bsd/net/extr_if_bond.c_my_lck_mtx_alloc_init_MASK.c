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
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  int /*<<< orphan*/  lck_grp_t ;
typedef  int /*<<< orphan*/  lck_attr_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline__ lck_mtx_t *
FUNC3(lck_grp_t * lck_grp)
{
    lck_attr_t * 	lck_attrs;
    lck_mtx_t *		lck_mtx;

    lck_attrs = FUNC0();
    lck_mtx = FUNC2(lck_grp, lck_attrs);
    FUNC1(lck_attrs);
    return (lck_mtx);
}