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
typedef  int /*<<< orphan*/  vfs_context_t ;
struct componentname {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KAUTH_VNODE_SEARCH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct componentname*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(vnode_t dp, struct componentname *cnp, int dp_authorized_in_cache, vfs_context_t ctx)
{
#if !CONFIG_MACF
#pragma unused(cnp)
#endif

	int error;

	if (!dp_authorized_in_cache) {
		error = FUNC1(dp, NULL, KAUTH_VNODE_SEARCH, ctx);
		if (error)
			return error;
	}
#if CONFIG_MACF
	error = mac_vnode_check_lookup(ctx, dp, cnp);
	if (error)
		return error;
#endif /* CONFIG_MACF */

	return 0;
}