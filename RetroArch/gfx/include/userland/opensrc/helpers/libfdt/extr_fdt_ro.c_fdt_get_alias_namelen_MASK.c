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
 char const* FUNC0 (void const*,int,char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (void const*,char*) ; 

const char *FUNC2(const void *fdt,
				  const char *name, int namelen)
{
	int aliasoffset;

	aliasoffset = FUNC1(fdt, "/aliases");
	if (aliasoffset < 0)
		return NULL;

	return FUNC0(fdt, aliasoffset, name, namelen, NULL);
}