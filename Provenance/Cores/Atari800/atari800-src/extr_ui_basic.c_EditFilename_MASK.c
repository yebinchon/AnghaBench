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
 int /*<<< orphan*/  FUNC0 (int,int,char const*,char*,int,int,int,int,char**,int) ; 
 int FALSE ; 
 int FILENAME_MAX ; 
 int TRUE ; 
 char Util_DIR_SEP_CHAR ; 
 int /*<<< orphan*/ * FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *title, char *filename, char directories[][FILENAME_MAX], int n_directories)
{
	char edited_filename[FILENAME_MAX];
	FUNC2(edited_filename, filename);
	if (edited_filename[0] == '\0') {
		if (n_directories > 0)
			FUNC2(edited_filename, directories[0]);
#ifdef HAVE_GETCWD
		if (edited_filename[0] == '\0') {
			if (getcwd(edited_filename, FILENAME_MAX) == NULL) {
				edited_filename[0] = '/';
				edited_filename[1] = '\0';
			}
			if (edited_filename[0] != '\0' && strlen(edited_filename) < FILENAME_MAX - 1) {
				char *p = edited_filename + strlen(edited_filename) - 1;
				if (*p != '/' && *p != '\\') {
					p[1] = Util_DIR_SEP_CHAR;
					p[2] = '\0';
				}
			}
		}
#endif
	}
	if (!FUNC0(0x9a, 0x94, title, edited_filename, FILENAME_MAX, 1, 11, 36, directories, n_directories))
		return FALSE;
	FUNC2(filename, edited_filename);
	return TRUE;
}