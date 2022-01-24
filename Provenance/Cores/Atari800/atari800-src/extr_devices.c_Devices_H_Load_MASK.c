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
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_SetN ; 
 int CPU_regY ; 
 scalar_t__ FUNC0 (size_t,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * Devices_atari_h_dir ; 
 char* Devices_h_exe_path ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* atari_filename ; 
 int /*<<< orphan*/  atari_path ; 
 int /*<<< orphan*/ * binf ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int*,int,int,int /*<<< orphan*/ *) ; 
 size_t h_devnum ; 
 int /*<<< orphan*/  host_path ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC10(int mydos)
{
	const char *p;
	UBYTE buf[2];
	if (devbug)
		FUNC4("LOAD Command");
	h_devnum = FUNC1(FALSE);
	if (h_devnum < 0)
		return;

	/* search for program on Devices_h_exe_path */
	for (p = Devices_h_exe_path; *p != '\0'; ) {
		int devnum;
		const char *q;
		char *r;
		if (p[0] == 'H' && p[1] >= '1' && p[1] <= '4' && p[2] == ':') {
			devnum = p[1] - '1';
			p += 3;
		}
		else
			devnum = h_devnum;
		for (q = p; *q != '\0' && *q != ';'; q++);
		r = atari_filename + (q - p);
		if (q != p) {
			FUNC9(atari_filename, p, q - p);
			if (!FUNC3(q[-1]))
				*r++ = '>';
		}
		if (FUNC0(devnum, r) == 0)
			return;
		FUNC5(host_path, Devices_atari_h_dir[devnum], atari_path);
		binf = FUNC7(host_path, "rb");
		if (binf != NULL || *q == '\0')
			break;
		p = q + 1;
	}

	if (binf == NULL) {
		/* open from the specified location */
		if (FUNC0(h_devnum, atari_filename) == 0)
			return;
		FUNC5(host_path, Devices_atari_h_dir[h_devnum], atari_path);
		binf = FUNC7(host_path, "rb");
		if (binf == NULL) {
			CPU_regY = 170;
			CPU_SetN;
			return;
		}
	}

	/* check header */
	if (FUNC8(buf, 1, 2, binf) != 2 || buf[0] != 0xff || buf[1] != 0xff) {
		FUNC6(binf);
		binf = NULL;
		FUNC4("H: load: not valid BIN file");
		CPU_regY = 180;
		CPU_SetN;
		return;
	}

	FUNC2(mydos);
}