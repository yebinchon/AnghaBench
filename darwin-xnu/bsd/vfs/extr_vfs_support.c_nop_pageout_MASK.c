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
struct vnop_pageout_args {int a_flags; int /*<<< orphan*/  a_size; int /*<<< orphan*/  a_pl_offset; int /*<<< orphan*/  a_pl; } ;

/* Variables and functions */
 int EINVAL ; 
 int UPL_ABORT_ERROR ; 
 int UPL_ABORT_FREE_ON_EMPTY ; 
 int UPL_NOCOMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC1(struct vnop_pageout_args *ap)
{
        if ( !(ap->a_flags & UPL_NOCOMMIT))
	        FUNC0(ap->a_pl, ap->a_pl_offset, ap->a_size, UPL_ABORT_FREE_ON_EMPTY | UPL_ABORT_ERROR);
	return (EINVAL);
}