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
 int FUNC0 (void*,void*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int FUNC3 (void*) ; 

__attribute__((used)) static int FUNC4(void *fdt, int newlen)
{
	void *p = (char *)fdt
		+ FUNC1(fdt) + FUNC3(fdt);
	int err;

	if ((err = FUNC0(fdt, p, 0, newlen)) != 0)
		return err;

	FUNC2(fdt, FUNC3(fdt) + newlen);
	return 0;
}