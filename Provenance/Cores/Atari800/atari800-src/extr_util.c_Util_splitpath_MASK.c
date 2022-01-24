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
 char const Util_DIR_SEP_CHAR ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 

void FUNC3(const char *path, char *dir_part, char *file_part)
{
	const char *p;
	/* find the last Util_DIR_SEP_CHAR except the last character */
	for (p = path + FUNC2(path) - 2; p >= path; p--) {
		if (*p == Util_DIR_SEP_CHAR
#ifdef DIR_SEP_BACKSLASH
/* on DOSish systems slash can be also used as a directory separator */
		 || *p == '/'
#endif
		   ) {
			if (dir_part != NULL) {
				int len = p - path;
				if (p == path || (p == path + 2 && path[1] == ':'))
					/* root dir: include Util_DIR_SEP_CHAR in dir_part */
					len++;
				FUNC0(dir_part, path, len);
				dir_part[len] = '\0';
			}
			if (file_part != NULL)
				FUNC1(file_part, p + 1);
			return;
		}
	}
	/* no Util_DIR_SEP_CHAR: current dir */
	if (dir_part != NULL)
		dir_part[0] = '\0';
	if (file_part != NULL)
		FUNC1(file_part, path);
}