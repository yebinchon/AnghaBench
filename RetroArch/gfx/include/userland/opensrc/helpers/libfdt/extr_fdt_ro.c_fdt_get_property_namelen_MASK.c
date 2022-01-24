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
struct fdt_property {int /*<<< orphan*/  nameoff; } ;

/* Variables and functions */
 int FDT_ERR_INTERNAL ; 
 scalar_t__ FUNC0 (void const*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (void const*,int) ; 
 struct fdt_property* FUNC3 (void const*,int,int*) ; 
 int FUNC4 (void const*,int) ; 

const struct fdt_property *FUNC5(const void *fdt,
						    int offset,
						    const char *name,
						    int namelen, int *lenp)
{
	for (offset = FUNC2(fdt, offset);
	     (offset >= 0);
	     (offset = FUNC4(fdt, offset))) {
		const struct fdt_property *prop;

		if ((prop = FUNC3(fdt, offset, lenp)) == 0) {
			offset = -FDT_ERR_INTERNAL;
			break;
		}
		if (FUNC0(fdt, FUNC1(prop->nameoff),
				   name, namelen))
			return prop;
	}

	if (lenp)
		*lenp = offset;
	return NULL;
}