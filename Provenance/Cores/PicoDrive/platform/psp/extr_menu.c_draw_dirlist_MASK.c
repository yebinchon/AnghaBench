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
struct my_dirent {int d_type; char* d_name; } ;

/* Variables and functions */
 int FIO_S_IFDIR ; 
 unsigned short FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ menu_screen ; 
 int /*<<< orphan*/  rom_loaded ; 
 int /*<<< orphan*/  FUNC4 (int,int,char*,unsigned short,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int,char*) ; 

__attribute__((used)) static void FUNC6(char *curdir, struct my_dirent **namelist, int n, int sel)
{
	int start, i, pos;

	start = 13 - sel;
	n--; // exclude current dir (".")

	FUNC2();

	if (!rom_loaded) {
//		menu_darken_bg(menu_screen, menu_screen, 321*240, 0);
	}

	FUNC1((char *)menu_screen + 512*129*2, (char *)menu_screen + 512*129*2, 512*10, 0);

	if (start - 2 >= 0)
		FUNC4(14, (start - 2)*10, curdir, 0xffff, 53-2);
	for (i = 0; i < n; i++) {
		pos = start + i;
		if (pos < 0)  continue;
		if (pos > 26) break;
		if (namelist[i+1]->d_type & FIO_S_IFDIR) {
			FUNC4(14,   pos*10, "/", 0xd7ff, 1);
			FUNC4(14+6, pos*10, namelist[i+1]->d_name, 0xd7ff, 80-3);
		} else {
			unsigned short color = FUNC0(namelist[i+1]->d_name);
			FUNC4(14,   pos*10, namelist[i+1]->d_name, color, 80-2);
		}
	}
	FUNC5(5, 130, ">");
	FUNC3();
}