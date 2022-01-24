#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* dir; TYPE_3__* pack; struct TYPE_9__* next; } ;
typedef  TYPE_2__ searchpath_t ;
struct TYPE_10__ {int numfiles; TYPE_4__* buildBuffer; } ;
typedef  TYPE_3__ pack_t ;
struct TYPE_11__ {char* name; } ;
typedef  TYPE_4__ fileInPack_t ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_8__ {int /*<<< orphan*/  gamedir; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int FUNC2 (char*,char**,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int MAX_FOUND_FILES ; 
 int MAX_ZPATH ; 
 scalar_t__ FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 char** FUNC9 (char*,char const*,char*,int*,int /*<<< orphan*/ ) ; 
 char** FUNC10 (int) ; 
 scalar_t__ fs_numServerPaks ; 
 TYPE_6__* fs_restrict ; 
 TYPE_2__* fs_searchpaths ; 
 int /*<<< orphan*/  qfalse ; 
 int FUNC11 (char const*) ; 

char **FUNC12( const char *path, const char *extension, char *filter, int *numfiles ) {
	int				nfiles;
	char			**listCopy;
	char			*list[MAX_FOUND_FILES];
	searchpath_t	*search;
	int				i;
	int				pathLength;
	int				extensionLength;
	int				length, pathDepth, temp;
	pack_t			*pak;
	fileInPack_t	*buildBuffer;
	char			zpath[MAX_ZPATH];

	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization\n" );
	}

	if ( !path ) {
		*numfiles = 0;
		return NULL;
	}
	if ( !extension ) {
		extension = "";
	}

	pathLength = FUNC11( path );
	if ( path[pathLength-1] == '\\' || path[pathLength-1] == '/' ) {
		pathLength--;
	}
	extensionLength = FUNC11( extension );
	nfiles = 0;
	FUNC5(path, zpath, &pathDepth);

	//
	// search through the path, one element at a time, adding to list
	//
	for (search = fs_searchpaths ; search ; search = search->next) {
		// is the element a pak file?
		if (search->pack) {

			//ZOID:  If we are pure, don't search for files on paks that
			// aren't on the pure list
			if ( !FUNC4(search->pack) ) {
				continue;
			}

			// look through all the pak file elements
			pak = search->pack;
			buildBuffer = pak->buildBuffer;
			for (i = 0; i < pak->numfiles; i++) {
				char	*name;
				int		zpathLen, depth;

				// check for directory match
				name = buildBuffer[i].name;
				//
				if (filter) {
					// case insensitive
					if (!FUNC1( filter, name, qfalse ))
						continue;
					// unique the match
					nfiles = FUNC2( name, list, nfiles );
				}
				else {

					zpathLen = FUNC5(name, zpath, &depth);

					if ( (depth-pathDepth)>2 || pathLength > zpathLen || FUNC7( name, path, pathLength ) ) {
						continue;
					}

					// check for extension match
					length = FUNC11( name );
					if ( length < extensionLength ) {
						continue;
					}

					if ( FUNC6( name + length - extensionLength, extension ) ) {
						continue;
					}
					// unique the match

					temp = pathLength;
					if (pathLength) {
						temp++;		// include the '/'
					}
					nfiles = FUNC2( name + temp, list, nfiles );
				}
			}
		} else if (search->dir) { // scan for files in the filesystem
			char	*netpath;
			int		numSysFiles;
			char	**sysFiles;
			char	*name;

			// don't scan directories for files if we are pure or restricted
			if ( fs_restrict->integer || fs_numServerPaks ) {
		        continue;
		    } else {
				netpath = FUNC3( search->dir->path, search->dir->gamedir, path );
				sysFiles = FUNC9( netpath, extension, filter, &numSysFiles, qfalse );
				for ( i = 0 ; i < numSysFiles ; i++ ) {
					// unique the match
					name = sysFiles[i];
					nfiles = FUNC2( name, list, nfiles );
				}
				FUNC8( sysFiles );
			}
		}		
	}

	// return a copy of the list
	*numfiles = nfiles;

	if ( !nfiles ) {
		return NULL;
	}

	listCopy = FUNC10( ( nfiles + 1 ) * sizeof( *listCopy ) );
	for ( i = 0 ; i < nfiles ; i++ ) {
		listCopy[i] = list[i];
	}
	listCopy[i] = NULL;

	return listCopy;
}