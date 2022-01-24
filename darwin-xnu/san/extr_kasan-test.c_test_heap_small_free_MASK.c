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
struct kasan_test {scalar_t__ datasz; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 scalar_t__ BUFSZ ; 
 int /*<<< orphan*/  FUNC0 (struct kasan_test*) ; 
 int /*<<< orphan*/  FUNC1 (struct kasan_test*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct kasan_test *t)
{
	FUNC1(t);

	uint8_t *x = FUNC2(BUFSZ);
	if (!x) {
		return 1;
	}
	t->datasz = BUFSZ;
	t->data = x;

	FUNC0(t);
	FUNC3(x, BUFSZ-2);
	t->data = NULL;
	t->datasz = 0;

	return 0;
}