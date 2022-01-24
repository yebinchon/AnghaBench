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
 scalar_t__ STACK_ARRAY_SZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC2 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC3 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct kasan_test *t)
{
	FUNC3(t);
	uint8_t *a1;
	uint8_t *a2;

	a1 = FUNC5(STACK_ARRAY_SZ);
	if (!a1)
		return 1;
	a2 = FUNC5(STACK_ARRAY_SZ+1);
	if (!a2)
		return 1;

	/* should work */
	FUNC4(a1, a2, STACK_ARRAY_SZ);
	FUNC4(a1, a2+1, STACK_ARRAY_SZ);

	FUNC0();

	/* should fail */
	FUNC1(t);
	FUNC4(a1, a2, STACK_ARRAY_SZ+1);
	FUNC2(t);

	return 0;
}