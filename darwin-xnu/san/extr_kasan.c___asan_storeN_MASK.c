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
typedef  scalar_t__ uptr ;

/* Variables and functions */
 int /*<<< orphan*/  TYPE_STORE ; 
 int /*<<< orphan*/  FUNC0 (void const*,size_t,int /*<<< orphan*/ ) ; 

void
FUNC1(uptr addr, size_t sz)
{
	FUNC0((const void *)addr, sz, TYPE_STORE);
}