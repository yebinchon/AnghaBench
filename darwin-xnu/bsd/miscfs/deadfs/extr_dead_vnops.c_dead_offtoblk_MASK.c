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
struct vnop_offtoblk_args {scalar_t__* a_lblkno; int /*<<< orphan*/  a_vp; } ;
typedef  scalar_t__ daddr64_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

int
FUNC1(struct vnop_offtoblk_args *ap)
{
    if (!FUNC0(ap->a_vp))
		return (EIO);

	*ap->a_lblkno = (daddr64_t)-1;	/* failure */
	return (0);
}