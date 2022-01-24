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
 int /*<<< orphan*/  G_STRLOC ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

int FUNC3(const char *prg_name, char **_base_dir) {
	char *base_dir = *_base_dir;

	if (base_dir) { /* basedir is already known, check if it is absolute */
		if (!FUNC2(base_dir)) {
			FUNC1("%s: --basedir option must be an absolute path, but was %s",
					G_STRLOC,
					base_dir);
			return -1;
		} else {
			return 0;
		}
	}

	/* find our installation directory if no basedir was given
	 * this is necessary for finding files when we daemonize
	 */
	base_dir = FUNC0(prg_name);
	if (!base_dir) {
		FUNC1("%s: Failed to get base directory",
				G_STRLOC);
		return -1;
	}

	*_base_dir = base_dir;

	return 0;

}