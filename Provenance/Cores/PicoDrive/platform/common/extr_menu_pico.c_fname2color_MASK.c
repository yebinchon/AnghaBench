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
 int FUNC0 (char const**) ; 
 char const** rom_exts ; 
 scalar_t__ FUNC1 (char const*,char const*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static unsigned short FUNC4(const char *fname)
{
	static const char *other_exts[] = { "gmv", "pat" };
	const char *ext;
	int i;

	ext = FUNC3(fname, '.');
	if (ext++ == NULL) {
		ext = fname + FUNC2(fname) - 3;
		if (ext < fname) ext = fname;
	}

	for (i = 0; rom_exts[i] != NULL; i++)
		if (FUNC1(ext, rom_exts[i]) == 0) return 0xbdff; // FIXME: mk defines
	for (i = 0; i < FUNC0(other_exts); i++)
		if (FUNC1(ext, other_exts[i]) == 0) return 0xaff5;
	return 0xffff;
}