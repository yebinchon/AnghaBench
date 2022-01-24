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
 int /*<<< orphan*/  TYPE_MEMW ; 
 int /*<<< orphan*/  FUNC0 (void const*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t,int /*<<< orphan*/ ) ; 

void
FUNC2(const void *src, void *dst, size_t sz)
{
	FUNC1(src, sz, TYPE_MEMR);
	FUNC1(dst, sz, TYPE_MEMW);
	FUNC0(src, dst, sz);
}