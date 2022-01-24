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
struct my_dirent {scalar_t__ d_type; char* d_name; } ;

/* Variables and functions */
 scalar_t__ DT_DIR ; 
 unsigned short FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* menu_screen ; 
 int /*<<< orphan*/  rom_loaded ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*) ; 

__attribute__((used)) static void FUNC6(char *curdir, struct my_dirent **namelist, int n, int sel)
{
	int start, i, pos;

	start = 12 - sel;
	n--; // exclude current dir (".")

	FUNC2(1);

	if (!rom_loaded) {
		FUNC1(menu_screen, menu_screen, 321*240, 0);
	}

	FUNC1((char *)menu_screen + 321*120*2, (char *)menu_screen + 321*120*2, 321*8, 0);

	if(start - 2 >= 0)
		FUNC4(14, (start - 2)*10, curdir, 0xffff, 53-2);
	for (i = 0; i < n; i++) {
		pos = start + i;
		if (pos < 0)  continue;
		if (pos > 23) break;
		if (namelist[i+1]->d_type == DT_DIR) {
			FUNC4(14,   pos*10, "/", 0xfff6, 1);
			FUNC4(14+6, pos*10, namelist[i+1]->d_name, 0xfff6, 53-3);
		} else {
			unsigned short color = FUNC0(namelist[i+1]->d_name);
			FUNC4(14,   pos*10, namelist[i+1]->d_name, color, 53-2);
		}
	}
	FUNC5(5, 120, ">");
	FUNC3();
}