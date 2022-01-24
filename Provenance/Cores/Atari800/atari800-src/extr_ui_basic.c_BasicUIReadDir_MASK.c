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
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int FALSE ; 
 int FILENAME_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dir_path ; 
 int /*<<< orphan*/ * dp ; 
 struct dirent* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(char *filename, int *isdir)
{
	struct dirent *entry;
	char fullfilename[FILENAME_MAX];
	struct stat st;
	entry = FUNC3(dp);
	if (entry == NULL) {
		FUNC2(dp);
		dp = NULL;
		return FALSE;
	}
	FUNC5(filename, entry->d_name);
	FUNC1(fullfilename, dir_path, entry->d_name);
	FUNC4(fullfilename, &st);
	*isdir = FUNC0(st.st_mode);
	return TRUE;
}