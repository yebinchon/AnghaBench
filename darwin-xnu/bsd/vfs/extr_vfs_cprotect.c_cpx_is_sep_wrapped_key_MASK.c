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
struct cpx {int /*<<< orphan*/  cpx_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPX_SEP_WRAPPEDKEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC1(const struct cpx *cpx)
{
	return FUNC0(cpx->cpx_flags, CPX_SEP_WRAPPEDKEY);
}