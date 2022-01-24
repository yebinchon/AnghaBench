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
typedef  int /*<<< orphan*/  UWORD ;
typedef  int UBYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_ClrN ; 
 int /*<<< orphan*/  CPU_SetN ; 
 int CPU_regY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Devices_ICBLLZ ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char const Util_DIR_SEP_CHAR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* atari_path ; 
 scalar_t__ devbug ; 
 int /*<<< orphan*/  host_path ; 

__attribute__((used)) static void FUNC5(void)
{
	UWORD bufadr;
	const char *p;

	if (devbug)
		FUNC1("To Absolute Path Command");

	if (FUNC0(FALSE) == 0)
		return;

	/* XXX: we sometimes check here for directories
	   with a trailing Util_DIR_SEP_CHAR. It seems to work on Win32 and DJGPP. */
	if (!FUNC4(host_path)) {
		CPU_regY = 150;
		CPU_SetN;
		return;
	}

	bufadr = FUNC3(Devices_ICBLLZ);
	if (atari_path[0] != '\0') {
		FUNC2(bufadr, '>');
		bufadr++;
		for (p = atari_path; *p != '\0'; p++) {
			if (*p == Util_DIR_SEP_CHAR) {
				if (p[1] == '\0')
					break;
				FUNC2(bufadr, '>');
			}
			else
				FUNC2(bufadr, (UBYTE) *p);
			bufadr++;
		}
	}
	FUNC2(bufadr, 0x00);

	CPU_regY = 1;
	CPU_ClrN;
}