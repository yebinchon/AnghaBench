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
 int /*<<< orphan*/  TYPE_MEMR ; 
 int FUNC0 (void const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void const*,size_t,int /*<<< orphan*/ ) ; 

int
FUNC2(const void *a, const void *b, size_t len)
{
	FUNC1(a, len, TYPE_MEMR);
	FUNC1(b, len, TYPE_MEMR);
	return FUNC0(a, b, len);
}