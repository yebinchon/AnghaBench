#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int eType; } ;
struct TYPE_6__ {int classname; TYPE_1__ s; int /*<<< orphan*/  inuse; } ;
typedef  TYPE_2__ gentity_t ;
struct TYPE_7__ {int num_entities; } ;

/* Variables and functions */
#define  ET_BEAM 139 
#define  ET_GENERAL 138 
#define  ET_GRAPPLE 137 
#define  ET_INVISIBLE 136 
#define  ET_ITEM 135 
#define  ET_MISSILE 134 
#define  ET_MOVER 133 
#define  ET_PLAYER 132 
#define  ET_PORTAL 131 
#define  ET_PUSH_TRIGGER 130 
#define  ET_SPEAKER 129 
#define  ET_TELEPORT_TRIGGER 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_2__* g_entities ; 
 TYPE_3__ level ; 

void	FUNC1 (void) {
	int			e;
	gentity_t		*check;

	check = g_entities+1;
	for (e = 1; e < level.num_entities ; e++, check++) {
		if ( !check->inuse ) {
			continue;
		}
		FUNC0("%3i:", e);
		switch ( check->s.eType ) {
		case ET_GENERAL:
			FUNC0("ET_GENERAL          ");
			break;
		case ET_PLAYER:
			FUNC0("ET_PLAYER           ");
			break;
		case ET_ITEM:
			FUNC0("ET_ITEM             ");
			break;
		case ET_MISSILE:
			FUNC0("ET_MISSILE          ");
			break;
		case ET_MOVER:
			FUNC0("ET_MOVER            ");
			break;
		case ET_BEAM:
			FUNC0("ET_BEAM             ");
			break;
		case ET_PORTAL:
			FUNC0("ET_PORTAL           ");
			break;
		case ET_SPEAKER:
			FUNC0("ET_SPEAKER          ");
			break;
		case ET_PUSH_TRIGGER:
			FUNC0("ET_PUSH_TRIGGER     ");
			break;
		case ET_TELEPORT_TRIGGER:
			FUNC0("ET_TELEPORT_TRIGGER ");
			break;
		case ET_INVISIBLE:
			FUNC0("ET_INVISIBLE        ");
			break;
		case ET_GRAPPLE:
			FUNC0("ET_GRAPPLE          ");
			break;
		default:
			FUNC0("%3i                 ", check->s.eType);
			break;
		}

		if ( check->classname ) {
			FUNC0("%s", check->classname);
		}
		FUNC0("\n");
	}
}