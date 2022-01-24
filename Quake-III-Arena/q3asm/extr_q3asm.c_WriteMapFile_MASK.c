#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* name; int value; int /*<<< orphan*/ * segment; struct TYPE_3__* next; } ;
typedef  TYPE_1__ symbol_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BSSSEG ; 
 int CODESEG ; 
 int MAX_OS_PATH ; 
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int,char*) ; 
 int /*<<< orphan*/  outputFilename ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/ * segment ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__* symbols ; 

void FUNC7( void ) {
	FILE		*f;
	symbol_t	*s;
	char		imageName[MAX_OS_PATH];
	int			seg;

	FUNC6( imageName, outputFilename );
	FUNC1( imageName );
	FUNC5( imageName, ".map" );

	FUNC4( "Writing %s...\n", imageName );
	f = FUNC0( imageName );
	for ( seg = CODESEG ; seg <= BSSSEG ; seg++ ) {
		for ( s = symbols ; s ; s = s->next ) {
			if ( s->name[0] == '$' ) {
				continue;	// skip locals
			}
			if ( &segment[seg] != s->segment ) {
				continue;
			}
			FUNC3( f, "%i %8x %s\n", seg, s->value, s->name );
		}
	}
	FUNC2( f );
}