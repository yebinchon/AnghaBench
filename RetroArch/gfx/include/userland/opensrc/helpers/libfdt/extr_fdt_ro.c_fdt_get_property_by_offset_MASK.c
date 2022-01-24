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
struct fdt_property {int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int FUNC0 (void const*,int) ; 
 struct fdt_property* FUNC1 (void const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

const struct fdt_property *FUNC3(const void *fdt,
						      int offset,
						      int *lenp)
{
	int err;
	const struct fdt_property *prop;

	if ((err = FUNC0(fdt, offset)) < 0) {
		if (lenp)
			*lenp = err;
		return NULL;
	}

	prop = FUNC1(fdt, offset);

	if (lenp)
		*lenp = FUNC2(prop->len);

	return prop;
}