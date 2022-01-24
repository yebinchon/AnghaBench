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
typedef  int /*<<< orphan*/  oldPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char const*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

void FUNC3 (char *path, int maxSize, const char *extension ) {
	char	oldPath[MAX_QPATH];
	char    *src;

//
// if path doesn't have a .EXT, append extension
// (extension should include the .)
//
	src = path + FUNC2(path) - 1;

	while (*src != '/' && src != path) {
		if ( *src == '.' ) {
			return;                 // it has an extension
		}
		src--;
	}

	FUNC1( oldPath, path, sizeof( oldPath ) );
	FUNC0( path, maxSize, "%s%s", oldPath, extension );
}