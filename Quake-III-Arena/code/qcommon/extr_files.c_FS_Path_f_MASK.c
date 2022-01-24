#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* dir; TYPE_7__* pack; struct TYPE_11__* next; } ;
typedef  TYPE_4__ searchpath_t ;
struct TYPE_13__ {int pakFilename; int /*<<< orphan*/  numfiles; } ;
struct TYPE_9__ {scalar_t__ o; } ;
struct TYPE_10__ {TYPE_2__ file; } ;
struct TYPE_12__ {int /*<<< orphan*/  name; TYPE_3__ handleFiles; } ;
struct TYPE_8__ {int path; int /*<<< orphan*/  gamedir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int MAX_FILE_HANDLES ; 
 scalar_t__ fs_numServerPaks ; 
 TYPE_4__* fs_searchpaths ; 
 TYPE_5__* fsh ; 

void FUNC2( void ) {
	searchpath_t	*s;
	int				i;

	FUNC0 ("Current search path:\n");
	for (s = fs_searchpaths; s; s = s->next) {
		if (s->pack) {
			FUNC0 ("%s (%i files)\n", s->pack->pakFilename, s->pack->numfiles);
			if ( fs_numServerPaks ) {
				if ( !FUNC1(s->pack) ) {
					FUNC0( "    not on the pure list\n" );
				} else {
					FUNC0( "    on the pure list\n" );
				}
			}
		} else {
			FUNC0 ("%s/%s\n", s->dir->path, s->dir->gamedir );
		}
	}


	FUNC0( "\n" );
	for ( i = 1 ; i < MAX_FILE_HANDLES ; i++ ) {
		if ( fsh[i].handleFiles.file.o ) {
			FUNC0( "handle %i: %s\n", i, fsh[i].name );
		}
	}
}