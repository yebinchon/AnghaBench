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
struct kasan_test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kasan_test*,int,int /*<<< orphan*/ ) ; 

void
FUNC1(struct kasan_test *kext_tests, int numtests)
{
	int i;
	for (i = 0; i < numtests; i++) {
		FUNC0(kext_tests, i, 0);
	}
}