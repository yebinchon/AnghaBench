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
 scalar_t__ TRUE ; 
 scalar_t__ domain_draining ; 
 int /*<<< orphan*/  domain_timeout ; 
 int /*<<< orphan*/  domain_timeout_mtx ; 
 scalar_t__ domain_timeout_run ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC0(&domain_timeout_mtx, LCK_MTX_ASSERT_OWNED);

	if (!domain_timeout_run && domain_draining) {
		domain_timeout_run = TRUE;
		FUNC1(domain_timeout, NULL, hz);
	}
}