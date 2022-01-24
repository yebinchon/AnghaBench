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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ frag6_nfragpackets ; 
 int /*<<< orphan*/  frag6_timeout ; 
 int frag6_timeout_run ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  ip6qlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0(&ip6qlock, LCK_MTX_ASSERT_OWNED);

	if (!frag6_timeout_run && frag6_nfragpackets > 0) {
		frag6_timeout_run = 1;
		FUNC1(frag6_timeout, NULL, hz);
	}
}