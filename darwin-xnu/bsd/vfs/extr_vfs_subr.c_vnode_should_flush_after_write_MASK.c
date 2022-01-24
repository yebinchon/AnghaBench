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

/* Variables and functions */
 int /*<<< orphan*/  IO_NOCACHE ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ flush_cache_on_write ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(vnode_t vp, int ioflag)
{
	return (flush_cache_on_write
			&& (FUNC0(ioflag, IO_NOCACHE) || FUNC1(vp)));
}