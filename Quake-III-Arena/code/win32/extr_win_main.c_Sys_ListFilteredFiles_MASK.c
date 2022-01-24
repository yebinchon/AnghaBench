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
struct _finddata_t {int attrib; char* name; } ;
typedef  int /*<<< orphan*/  search ;
typedef  int /*<<< orphan*/  newsubdirs ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,...) ; 
 char* FUNC2 (char*) ; 
 int MAX_FOUND_FILES ; 
 int MAX_OSPATH ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int _A_SUBDIR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,struct _finddata_t*) ; 
 int FUNC6 (int,struct _finddata_t*) ; 
 int /*<<< orphan*/  qfalse ; 
 scalar_t__ FUNC7 (char*) ; 

void FUNC8( const char *basedir, char *subdirs, char *filter, char **list, int *numfiles ) {
	char		search[MAX_OSPATH], newsubdirs[MAX_OSPATH];
	char		filename[MAX_OSPATH];
	int			findhandle;
	struct _finddata_t findinfo;

	if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
		return;
	}

	if (FUNC7(subdirs)) {
		FUNC1( search, sizeof(search), "%s\\%s\\*", basedir, subdirs );
	}
	else {
		FUNC1( search, sizeof(search), "%s\\*", basedir );
	}

	findhandle = FUNC5 (search, &findinfo);
	if (findhandle == -1) {
		return;
	}

	do {
		if (findinfo.attrib & _A_SUBDIR) {
			if (FUNC3(findinfo.name, ".") && FUNC3(findinfo.name, "..")) {
				if (FUNC7(subdirs)) {
					FUNC1( newsubdirs, sizeof(newsubdirs), "%s\\%s", subdirs, findinfo.name);
				}
				else {
					FUNC1( newsubdirs, sizeof(newsubdirs), "%s", findinfo.name);
				}
				FUNC8( basedir, newsubdirs, filter, list, numfiles );
			}
		}
		if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
			break;
		}
		FUNC1( filename, sizeof(filename), "%s\\%s", subdirs, findinfo.name );
		if (!FUNC0( filter, filename, qfalse ))
			continue;
		list[ *numfiles ] = FUNC2( filename );
		(*numfiles)++;
	} while ( FUNC6 (findhandle, &findinfo) != -1 );

	FUNC4 (findhandle);
}