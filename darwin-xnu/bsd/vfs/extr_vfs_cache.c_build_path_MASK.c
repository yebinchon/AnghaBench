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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int,int*,int,int /*<<< orphan*/ ) ; 

int
FUNC1(vnode_t first_vp, char *buff, int buflen, int *outlen, int flags, vfs_context_t ctx)
{
	return (FUNC0(first_vp, NULL, buff, buflen, outlen, flags, ctx));
}