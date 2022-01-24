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
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int FDT_ERR_NOTFOUND ; 
 int FUNC1 (void const*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (void const*,int,char const*) ; 

int FUNC3(const void *fdt, int startoffset,
				  const char *compatible)
{
	int offset, err;

	FUNC0(fdt);

	/* FIXME: The algorithm here is pretty horrible: we scan each
	 * property of a node in fdt_node_check_compatible(), then if
	 * that didn't find what we want, we scan over them again
	 * making our way to the next node.  Still it's the easiest to
	 * implement approach; performance can come later. */
	for (offset = FUNC1(fdt, startoffset, NULL);
	     offset >= 0;
	     offset = FUNC1(fdt, offset, NULL)) {
		err = FUNC2(fdt, offset, compatible);
		if ((err < 0) && (err != -FDT_ERR_NOTFOUND))
			return err;
		else if (err == 0)
			return offset;
	}

	return offset; /* error from fdt_next_node() */
}