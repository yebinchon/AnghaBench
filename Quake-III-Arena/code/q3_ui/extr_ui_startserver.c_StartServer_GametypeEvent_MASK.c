#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t curvalue; } ;
struct TYPE_4__ {size_t nummaps; int* mapGamebits; int maxpages; scalar_t__ currentmap; scalar_t__ page; int /*<<< orphan*/ * maplist; TYPE_1__ gametype; } ;

/* Variables and functions */
 int GT_FFA ; 
 int GT_SINGLE_PLAYER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int MAX_MAPSPERPAGE ; 
 int /*<<< orphan*/  MAX_NAMELENGTH ; 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (int) ; 
 int FUNC6 () ; 
 int* gametype_remap ; 
 TYPE_2__ s_startserver ; 

__attribute__((used)) static void FUNC7( void* ptr, int event ) {
	int			i;
	int			count;
	int			gamebits;
	int			matchbits;
	const char	*info;

	if( event != QM_ACTIVATED) {
		return;
	}

	count = FUNC6();
	s_startserver.nummaps = 0;
	matchbits = 1 << gametype_remap[s_startserver.gametype.curvalue];
	if( gametype_remap[s_startserver.gametype.curvalue] == GT_FFA ) {
		matchbits |= ( 1 << GT_SINGLE_PLAYER );
	}
	for( i = 0; i < count; i++ ) {
		info = FUNC5( i );

		gamebits = FUNC0( FUNC1( info, "type") );
		if( !( gamebits & matchbits ) ) {
			continue;
		}

		FUNC2( s_startserver.maplist[s_startserver.nummaps], FUNC1( info, "map"), MAX_NAMELENGTH );
		FUNC3( s_startserver.maplist[s_startserver.nummaps] );
		s_startserver.mapGamebits[s_startserver.nummaps] = gamebits;
		s_startserver.nummaps++;
	}
	s_startserver.maxpages = (s_startserver.nummaps + MAX_MAPSPERPAGE-1)/MAX_MAPSPERPAGE;
	s_startserver.page = 0;
	s_startserver.currentmap = 0;

	FUNC4();
}