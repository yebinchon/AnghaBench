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
 int /*<<< orphan*/  FUNC0 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC1 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC2 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct kasan_test *t)
{
	FUNC2(t);
	char a1[9];

	/* should not fault */
	FUNC3(a1, "small", 9);
	FUNC3(a1, "looooonnnnggg", 9);

	FUNC0(t);
	FUNC3(a1, "looooonnnnggg", 10);
	FUNC1(t);

	return a1[0] != 'l';
}