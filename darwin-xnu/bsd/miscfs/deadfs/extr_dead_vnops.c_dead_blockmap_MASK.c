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
struct vnop_blockmap_args {int /*<<< orphan*/  a_context; int /*<<< orphan*/  a_flags; int /*<<< orphan*/  a_poff; int /*<<< orphan*/  a_run; int /*<<< orphan*/  a_bpn; int /*<<< orphan*/  a_size; int /*<<< orphan*/  a_foffset; int /*<<< orphan*/  a_vp; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(struct vnop_blockmap_args *ap)
{

	if (!FUNC1(ap->a_vp))
		return (EIO);
	return (FUNC0(ap->a_vp, ap->a_foffset, ap->a_size, ap->a_bpn,
	                 ap->a_run, ap->a_poff, ap->a_flags, ap->a_context));
}