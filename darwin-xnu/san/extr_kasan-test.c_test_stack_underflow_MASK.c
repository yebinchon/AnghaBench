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
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct kasan_test *t)
{
	FUNC3(t);

	long idx;
	uint8_t a[STACK_ARRAY_SZ];

	FUNC4(a, 0, STACK_ARRAY_SZ);

	/* generate a negative index without the compiler noticing */
#if __x86_64__
	__asm__ __volatile__("movq $-1, %0" : "=r"(idx) :: "memory");
#else
	__asm__ __volatile__("mov %0, #-1" : "=r"(idx) :: "memory");
#endif

	FUNC1(t);
	a[idx] = 0xbd;
	FUNC2(t);

	FUNC0();
	return (a[0] == 0);
}