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
struct bstp_state {int bs_bridge_priority; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int BSTP_MAX_PRIORITY ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_state*) ; 

int
FUNC3(struct bstp_state *bs, int pri)
{
	if (pri < 0 || pri > BSTP_MAX_PRIORITY)
		return (EINVAL);

	/* Limit to steps of 4096 */
	pri -= pri % 4096;

	FUNC0(bs);
	bs->bs_bridge_priority = pri;
	FUNC2(bs);
	FUNC1(bs);
	return (0);
}