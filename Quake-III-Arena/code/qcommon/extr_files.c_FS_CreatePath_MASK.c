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
typedef  int /*<<< orphan*/  qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char PATH_SEP ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static qboolean FUNC3 (char *OSPath) {
	char	*ofs;
	
	// make absolutely sure that it can't back up the path
	// FIXME: is c: allowed???
	if ( FUNC2( OSPath, ".." ) || FUNC2( OSPath, "::" ) ) {
		FUNC0( "WARNING: refusing to create relative path \"%s\"\n", OSPath );
		return qtrue;
	}

	for (ofs = OSPath+1 ; *ofs ; ofs++) {
		if (*ofs == PATH_SEP) {	
			// create the directory
			*ofs = 0;
			FUNC1 (OSPath);
			*ofs = PATH_SEP;
		}
	}
	return qfalse;
}