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
typedef  int /*<<< orphan*/  vnode_t ;
struct componentname {scalar_t__ cn_hash; int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct componentname*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *
FUNC5(vnode_t dvp, vnode_t vp, struct componentname *cnp)
{
	const char *strname;

        if (cnp->cn_hash == 0)
	        cnp->cn_hash = FUNC4(cnp->cn_nameptr, cnp->cn_namelen);

	/*
	 * grab 2 references on the string entered
	 * one for the cache_enter_locked to consume
	 * and the second to be consumed by v_name (vnode_create call point)
	 */
	strname = FUNC2(cnp->cn_nameptr, cnp->cn_namelen, cnp->cn_hash, TRUE, 0);

	FUNC0();

	FUNC3(dvp, vp, cnp, strname);

	FUNC1();

	return (strname);
}