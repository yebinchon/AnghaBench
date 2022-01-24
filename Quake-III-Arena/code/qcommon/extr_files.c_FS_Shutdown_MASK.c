#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* dir; struct TYPE_5__* pack; struct TYPE_5__* buildBuffer; int /*<<< orphan*/  handle; struct TYPE_5__* next; } ;
typedef  TYPE_1__ searchpath_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {scalar_t__ fileSize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MAX_FILE_HANDLES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* fs_searchpaths ; 
 TYPE_2__* fsh ; 
 int /*<<< orphan*/  missingFiles ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5( qboolean closemfp ) {
	searchpath_t	*p, *next;
	int	i;

	for(i = 0; i < MAX_FILE_HANDLES; i++) {
		if (fsh[i].fileSize) {
			FUNC1(i);
		}
	}

	// free everything
	for ( p = fs_searchpaths ; p ; p = next ) {
		next = p->next;

		if ( p->pack ) {
			FUNC4(p->pack->handle);
			FUNC2( p->pack->buildBuffer );
			FUNC2( p->pack );
		}
		if ( p->dir ) {
			FUNC2( p->dir );
		}
		FUNC2( p );
	}

	// any FS_ calls will now be an error until reinitialized
	fs_searchpaths = NULL;

	FUNC0( "path" );
	FUNC0( "dir" );
	FUNC0( "fdir" );
	FUNC0( "touchFile" );

#ifdef FS_MISSING
	if (closemfp) {
		fclose(missingFiles);
	}
#endif
}