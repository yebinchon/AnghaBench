#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {scalar_t__ endTime; int leType; struct TYPE_17__* prev; } ;
typedef  TYPE_1__ localEntity_t ;
struct TYPE_18__ {scalar_t__ time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
#define  LE_EXPLOSION 140 
#define  LE_FADE_RGB 139 
#define  LE_FALL_SCALE_FADE 138 
#define  LE_FRAGMENT 137 
#define  LE_INVULIMPACT 136 
#define  LE_INVULJUICED 135 
#define  LE_KAMIKAZE 134 
#define  LE_MARK 133 
#define  LE_MOVE_SCALE_FADE 132 
#define  LE_SCALE_FADE 131 
#define  LE_SCOREPLUM 130 
#define  LE_SHOWREFENTITY 129 
#define  LE_SPRITE_EXPLOSION 128 
 TYPE_3__ cg ; 
 TYPE_1__ cg_activeLocalEntities ; 

void FUNC14( void ) {
	localEntity_t	*le, *next;

	// walk the list backwards, so any new local entities generated
	// (trails, marks, etc) will be present this frame
	le = cg_activeLocalEntities.prev;
	for ( ; le != &cg_activeLocalEntities ; le = next ) {
		// grab next now, so if the local entity is freed we
		// still have it
		next = le->prev;

		if ( cg.time >= le->endTime ) {
			FUNC13( le );
			continue;
		}
		switch ( le->leType ) {
		default:
			FUNC12( "Bad leType: %i", le->leType );
			break;

		case LE_MARK:
			break;

		case LE_SPRITE_EXPLOSION:
			FUNC11( le );
			break;

		case LE_EXPLOSION:
			FUNC0( le );
			break;

		case LE_FRAGMENT:			// gibs and brass
			FUNC3( le );
			break;

		case LE_MOVE_SCALE_FADE:		// water bubbles
			FUNC7( le );
			break;

		case LE_FADE_RGB:				// teleporters, railtrails
			FUNC1( le );
			break;

		case LE_FALL_SCALE_FADE: // gib blood trails
			FUNC2( le );
			break;

		case LE_SCALE_FADE:		// rocket trails
			FUNC9( le );
			break;

		case LE_SCOREPLUM:
			FUNC10( le );
			break;

#ifdef MISSIONPACK
		case LE_KAMIKAZE:
			CG_AddKamikaze( le );
			break;
		case LE_INVULIMPACT:
			CG_AddInvulnerabilityImpact( le );
			break;
		case LE_INVULJUICED:
			CG_AddInvulnerabilityJuiced( le );
			break;
		case LE_SHOWREFENTITY:
			CG_AddRefEntity( le );
			break;
#endif
		}
	}
}