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
typedef  int uint8_t ;
struct kasan_test {int dummy; } ;

/* Variables and functions */
 int STACK_ARRAY_SZ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC2 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC3 (struct kasan_test*) ; 

__attribute__((used)) static int FUNC4(struct kasan_test *t)
{
	FUNC3(t);

	int i;
	volatile uint8_t a[STACK_ARRAY_SZ];

	for (i = 0; i < STACK_ARRAY_SZ; i++) {
		a[i] = i;
	}

	FUNC1(t);
	a[i] = i; /* rookie error */
	FUNC2(t);

	FUNC0();

	return !(a[0] == 0);
}