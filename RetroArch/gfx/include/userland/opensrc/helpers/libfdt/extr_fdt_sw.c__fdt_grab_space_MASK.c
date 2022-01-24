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
 void* FUNC0 (void*,int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int FUNC5 (void*) ; 

__attribute__((used)) static void *FUNC6(void *fdt, size_t len)
{
	int offset = FUNC4(fdt);
	int spaceleft;

	spaceleft = FUNC5(fdt) - FUNC1(fdt)
		- FUNC3(fdt);

	if ((offset + len < offset) || (offset + len > spaceleft))
		return NULL;

	FUNC2(fdt, offset + len);
	return FUNC0(fdt, offset);
}