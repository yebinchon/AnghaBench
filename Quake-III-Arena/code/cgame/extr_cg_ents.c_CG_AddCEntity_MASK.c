#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int eType; } ;
struct TYPE_17__ {TYPE_1__ currentState; } ;
typedef  TYPE_2__ centity_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
#define  ET_BEAM 140 
 int ET_EVENTS ; 
#define  ET_GENERAL 139 
#define  ET_GRAPPLE 138 
#define  ET_INVISIBLE 137 
#define  ET_ITEM 136 
#define  ET_MISSILE 135 
#define  ET_MOVER 134 
#define  ET_PLAYER 133 
#define  ET_PORTAL 132 
#define  ET_PUSH_TRIGGER 131 
#define  ET_SPEAKER 130 
#define  ET_TEAM 129 
#define  ET_TELEPORT_TRIGGER 128 

__attribute__((used)) static void FUNC13( centity_t *cent ) {
	// event-only entities will have been dealt with already
	if ( cent->currentState.eType >= ET_EVENTS ) {
		return;
	}

	// calculate the current origin
	FUNC1( cent );

	// add automatic effects
	FUNC2( cent );

	switch ( cent->currentState.eType ) {
	default:
		FUNC3( "Bad entity type: %i\n", cent->currentState.eType );
		break;
	case ET_INVISIBLE:
	case ET_PUSH_TRIGGER:
	case ET_TELEPORT_TRIGGER:
		break;
	case ET_GENERAL:
		FUNC4( cent );
		break;
	case ET_PLAYER:
		FUNC9( cent );
		break;
	case ET_ITEM:
		FUNC6( cent );
		break;
	case ET_MISSILE:
		FUNC7( cent );
		break;
	case ET_MOVER:
		FUNC8( cent );
		break;
	case ET_BEAM:
		FUNC0( cent );
		break;
	case ET_PORTAL:
		FUNC10( cent );
		break;
	case ET_SPEAKER:
		FUNC11( cent );
		break;
	case ET_GRAPPLE:
		FUNC5( cent );
		break;
	case ET_TEAM:
		FUNC12( cent );
		break;
	}
}