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
struct stat {int st_mode; } ;
typedef  int mode_t ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  G_FILE_ERROR ; 
 int /*<<< orphan*/  G_FILE_ERROR_INVAL ; 
 int /*<<< orphan*/  G_FILE_ERROR_PERM ; 
 int S_IFMT ; 
 int S_IFREG ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/  const*,struct stat*) ; 

int FUNC4(const gchar *filename, int required_filemask, GError **gerr) {
#ifndef _WIN32
	struct stat stbuf;
	mode_t		fmode;
	
	if (FUNC3(filename, &stbuf) == -1) {
		FUNC1(gerr, G_FILE_ERROR, FUNC0(errno),
				"cannot stat(%s): %s", filename,
				FUNC2(errno));
		return -1;
	}

	fmode = stbuf.st_mode;
	if ((fmode & S_IFMT) != S_IFREG) {
		FUNC1(gerr, G_FILE_ERROR, G_FILE_ERROR_INVAL,
				"%s isn't a regular file", filename);
		return -1;
	}

	if ((fmode & required_filemask) != 0) {
		FUNC1(gerr, G_FILE_ERROR, G_FILE_ERROR_PERM,
				"permissions of %s aren't secure (0660 or stricter required)", filename);
		return 1;
	}
	
#undef MASK

#endif /* _WIN32 */
	return 0;
}