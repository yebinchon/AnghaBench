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
struct fdt_property {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct fdt_property* FUNC3 (void*,int,char const*,int*) ; 

__attribute__((used)) static int FUNC4(void *fdt, int nodeoffset, const char *name,
				int len, struct fdt_property **prop)
{
	int oldlen;
	int err;

	*prop = FUNC3(fdt, nodeoffset, name, &oldlen);
	if (! (*prop))
		return oldlen;

	if ((err = FUNC1(fdt, (*prop)->data, FUNC0(oldlen),
				      FUNC0(len))) != 0)
		return err;

	(*prop)->len = FUNC2(len);
	return 0;
}