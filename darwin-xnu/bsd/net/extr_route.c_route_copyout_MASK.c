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
struct route {int /*<<< orphan*/ * ro_srcia; int /*<<< orphan*/ * ro_lle; int /*<<< orphan*/ * ro_rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct route const*,struct route*,size_t) ; 

void
FUNC4(struct route *dst, const struct route *src, size_t length)
{
	/* Copy everything (rt, srcif, flags, dst) from src */
	FUNC3(src, dst, length);

	/* Hold one reference for the local copy of struct route */
	if (dst->ro_rt != NULL)
		FUNC2(dst->ro_rt);

	/* Hold one reference for the local copy of struct lle */
	if (dst->ro_lle != NULL)
		FUNC1(dst->ro_lle);

	/* Hold one reference for the local copy of struct ifaddr */
	if (dst->ro_srcia != NULL)
		FUNC0(dst->ro_srcia);
}