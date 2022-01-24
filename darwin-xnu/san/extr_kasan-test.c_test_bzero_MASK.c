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
typedef  int /*<<< orphan*/  uint8_t ;
struct kasan_test {int dummy; } ;

/* Variables and functions */
 int STACK_ARRAY_SZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC2 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC3 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct kasan_test *t)
{
	FUNC3(t);
	uint8_t a1[STACK_ARRAY_SZ];

	/* should work */
	FUNC4(a1, STACK_ARRAY_SZ);

	FUNC0();

	/* should fail */
	FUNC1(t);
	FUNC4(a1, STACK_ARRAY_SZ+1);
	FUNC2(t);

	return 0;
}