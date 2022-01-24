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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* af80_charset_filename ; 
 char* af80_rom_filename ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*) ; 

void FUNC1(FILE *fp)
{
	FUNC0(fp, "AF80_ROM=%s\n", af80_rom_filename);
	FUNC0(fp, "AF80_CHARSET=%s\n", af80_charset_filename);
}