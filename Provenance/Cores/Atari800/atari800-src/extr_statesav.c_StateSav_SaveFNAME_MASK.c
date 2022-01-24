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
typedef  scalar_t__ UWORD ;
typedef  int /*<<< orphan*/  UBYTE ;

/* Variables and functions */
 int FILENAME_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,char*,scalar_t__) ; 

void FUNC5(const char *filename)
{
	UWORD namelen;
#ifdef HAVE_GETCWD
	char dirname[FILENAME_MAX]="";

	/* Check to see if file is in application tree, if so, just save as
	   relative path....*/
	if (getcwd(dirname, FILENAME_MAX) != NULL) {
		if (strncmp(filename, dirname, strlen(dirname)) == 0)
			/* XXX: check if '/' or '\\' follows dirname in filename? */
			filename += strlen(dirname) + 1;
	}
#endif

	namelen = FUNC3(filename);
	/* Save the length of the filename, followed by the filename */
	FUNC1(&namelen, 1);
	FUNC0((const UBYTE *) filename, namelen);
}