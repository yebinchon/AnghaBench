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
typedef  int /*<<< orphan*/  uptr ;
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ ASAN_ARRAY_COOKIE ; 
 scalar_t__ ASAN_HEAP_FREED ; 
 scalar_t__* FUNC0 (int /*<<< orphan*/ ) ; 

uptr
FUNC1(uptr *p)
{
	uint8_t *shadow = FUNC0((uptr)p);
	if (*shadow == ASAN_ARRAY_COOKIE) {
		return *p;
	} else if (*shadow == ASAN_HEAP_FREED) {
		return 0;
	} else {
		return *p;
	}
}