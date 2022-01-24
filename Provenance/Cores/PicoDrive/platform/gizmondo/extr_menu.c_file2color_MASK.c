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
typedef  int /*<<< orphan*/  rom_exts ;
typedef  int /*<<< orphan*/  other_exts ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static unsigned short FUNC2(const char *fname)
{
	const char *ext = fname + FUNC1(fname) - 3;
	static const char *rom_exts[]   = { "zip", "bin", "smd", "gen", "iso", "cso" };
	static const char *other_exts[] = { "gmv", "pat" };
	int i;

	if (ext < fname) ext = fname;
	for (i = 0; i < sizeof(rom_exts)/sizeof(rom_exts[0]); i++)
		if (FUNC0(ext, rom_exts[i]) == 0) return 0xbdff;
	for (i = 0; i < sizeof(other_exts)/sizeof(other_exts[0]); i++)
		if (FUNC0(ext, other_exts[i]) == 0) return 0xaff5;
	return 0xffff;
}