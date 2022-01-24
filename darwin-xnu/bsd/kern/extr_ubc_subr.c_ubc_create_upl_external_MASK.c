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
typedef  int /*<<< orphan*/  upl_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
struct vnode {int dummy; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

kern_return_t
FUNC2(
	struct vnode	*vp,
	off_t 		f_offset,
	int		bufsize,
	upl_t		*uplp,
	upl_page_info_t	**plp,
	int		uplflags)
{
    return (FUNC0(vp, f_offset, bufsize, uplp, plp, uplflags, FUNC1()));
}