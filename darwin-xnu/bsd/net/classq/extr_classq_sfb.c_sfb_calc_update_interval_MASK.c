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
typedef  int /*<<< orphan*/  u_int64_t ;
struct sfb {int /*<<< orphan*/  sfb_update_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct sfb *sp, u_int64_t out_bw)
{
#pragma unused(out_bw)
	u_int64_t update_interval = 0;
	FUNC0(&update_interval);
	FUNC1(&update_interval, &sp->sfb_update_interval);
}