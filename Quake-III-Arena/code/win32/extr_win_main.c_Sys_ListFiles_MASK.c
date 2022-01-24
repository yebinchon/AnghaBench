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
struct _finddata_t {int attrib; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  search ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_FOUND_FILES ; 
 int MAX_OSPATH ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,char*,char**,int*) ; 
 char** FUNC3 (int) ; 
 int _A_SUBDIR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (char*,struct _finddata_t*) ; 
 int FUNC6 (int,struct _finddata_t*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

char **FUNC8( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs ) {
	char		search[MAX_OSPATH];
	int			nfiles;
	char		**listCopy;
	char		*list[MAX_FOUND_FILES];
	struct _finddata_t findinfo;
	int			findhandle;
	int			flag;
	int			i;

	if (filter) {

		nfiles = 0;
		FUNC2( directory, "", filter, list, &nfiles );

		list[ nfiles ] = 0;
		*numfiles = nfiles;

		if (!nfiles)
			return NULL;

		listCopy = FUNC3( ( nfiles + 1 ) * sizeof( *listCopy ) );
		for ( i = 0 ; i < nfiles ; i++ ) {
			listCopy[i] = list[i];
		}
		listCopy[i] = NULL;

		return listCopy;
	}

	if ( !extension) {
		extension = "";
	}

	// passing a slash as extension will find directories
	if ( extension[0] == '/' && extension[1] == 0 ) {
		extension = "";
		flag = 0;
	} else {
		flag = _A_SUBDIR;
	}

	FUNC0( search, sizeof(search), "%s\\*%s", directory, extension );

	// search
	nfiles = 0;

	findhandle = FUNC5 (search, &findinfo);
	if (findhandle == -1) {
		*numfiles = 0;
		return NULL;
	}

	do {
		if ( (!wantsubs && flag ^ ( findinfo.attrib & _A_SUBDIR )) || (wantsubs && findinfo.attrib & _A_SUBDIR) ) {
			if ( nfiles == MAX_FOUND_FILES - 1 ) {
				break;
			}
			list[ nfiles ] = FUNC1( findinfo.name );
			nfiles++;
		}
	} while ( FUNC6 (findhandle, &findinfo) != -1 );

	list[ nfiles ] = 0;

	FUNC4 (findhandle);

	// return a copy of the list
	*numfiles = nfiles;

	if ( !nfiles ) {
		return NULL;
	}

	listCopy = FUNC3( ( nfiles + 1 ) * sizeof( *listCopy ) );
	for ( i = 0 ; i < nfiles ; i++ ) {
		listCopy[i] = list[i];
	}
	listCopy[i] = NULL;

	do {
		flag = 0;
		for(i=1; i<nfiles; i++) {
			if (FUNC7(listCopy[i-1], listCopy[i])) {
				char *temp = listCopy[i];
				listCopy[i] = listCopy[i-1];
				listCopy[i-1] = temp;
				flag = 1;
			}
		}
	} while(flag);

	return listCopy;
}