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
struct fdt_property {void* len; void* nameoff; void* tag; } ;

/* Variables and functions */
 int FDT_PROP ; 
 int FUNC0 (int) ; 
 int FUNC1 (void*,int) ; 
 int FUNC2 (void*,char const*) ; 
 struct fdt_property* FUNC3 (void*,int) ; 
 int FUNC4 (void*,struct fdt_property*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(void *fdt, int nodeoffset, const char *name,
			     int len, struct fdt_property **prop)
{
	int proplen;
	int nextoffset;
	int namestroff;
	int err;

	if ((nextoffset = FUNC1(fdt, nodeoffset)) < 0)
		return nextoffset;

	namestroff = FUNC2(fdt, name);
	if (namestroff < 0)
		return namestroff;

	*prop = FUNC3(fdt, nextoffset);
	proplen = sizeof(**prop) + FUNC0(len);

	err = FUNC4(fdt, *prop, 0, proplen);
	if (err)
		return err;

	(*prop)->tag = FUNC5(FDT_PROP);
	(*prop)->nameoff = FUNC5(namestroff);
	(*prop)->len = FUNC5(len);
	return 0;
}