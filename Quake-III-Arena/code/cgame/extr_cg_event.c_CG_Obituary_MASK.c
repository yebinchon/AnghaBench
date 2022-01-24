#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  targetName ;
typedef  int /*<<< orphan*/  gender_t ;
struct TYPE_12__ {int otherEntityNum; int otherEntityNum2; int eventParm; } ;
typedef  TYPE_3__ entityState_t ;
struct TYPE_13__ {int /*<<< orphan*/  gender; } ;
typedef  TYPE_4__ clientInfo_t ;
typedef  int /*<<< orphan*/  attackerName ;
struct TYPE_17__ {char* killerName; TYPE_2__* snap; } ;
struct TYPE_16__ {scalar_t__ integer; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {scalar_t__ gametype; TYPE_4__* clientinfo; } ;
struct TYPE_10__ {int clientNum; scalar_t__* persistant; } ;
struct TYPE_11__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (char*,double,int /*<<< orphan*/ ) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 scalar_t__ CS_PLAYERS ; 
 int ENTITYNUM_WORLD ; 
 int /*<<< orphan*/  GENDER_FEMALE ; 
 int /*<<< orphan*/  GENDER_NEUTER ; 
 scalar_t__ GT_TEAM ; 
 char* FUNC5 (char const*,char*) ; 
 int MAX_CLIENTS ; 
#define  MOD_BFG 155 
#define  MOD_BFG_SPLASH 154 
#define  MOD_CHAINGUN 153 
#define  MOD_CRUSH 152 
#define  MOD_FALLING 151 
#define  MOD_GAUNTLET 150 
#define  MOD_GRAPPLE 149 
#define  MOD_GRENADE 148 
#define  MOD_GRENADE_SPLASH 147 
#define  MOD_JUICED 146 
#define  MOD_KAMIKAZE 145 
#define  MOD_LAVA 144 
#define  MOD_LIGHTNING 143 
#define  MOD_MACHINEGUN 142 
#define  MOD_NAIL 141 
#define  MOD_PLASMA 140 
#define  MOD_PLASMA_SPLASH 139 
#define  MOD_PROXIMITY_MINE 138 
#define  MOD_RAILGUN 137 
#define  MOD_ROCKET 136 
#define  MOD_ROCKET_SPLASH 135 
#define  MOD_SHOTGUN 134 
#define  MOD_SLIME 133 
#define  MOD_SUICIDE 132 
#define  MOD_TARGET_LASER 131 
#define  MOD_TELEFRAG 130 
#define  MOD_TRIGGER_HURT 129 
#define  MOD_WATER 128 
 size_t PERS_RANK ; 
 size_t PERS_SCORE ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 double SCREEN_HEIGHT ; 
 int /*<<< orphan*/  S_COLOR_WHITE ; 
 TYPE_8__ cg ; 
 TYPE_7__ cg_cameraOrbit ; 
 TYPE_6__ cg_singlePlayerActive ; 
 TYPE_5__ cgs ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char*,...) ; 

__attribute__((used)) static void FUNC10( entityState_t *ent ) {
	int			mod;
	int			target, attacker;
	char		*message;
	char		*message2;
	const char	*targetInfo;
	const char	*attackerInfo;
	char		targetName[32];
	char		attackerName[32];
	gender_t	gender;
	clientInfo_t	*ci;

	target = ent->otherEntityNum;
	attacker = ent->otherEntityNum2;
	mod = ent->eventParm;

	if ( target < 0 || target >= MAX_CLIENTS ) {
		FUNC2( "CG_Obituary: target out of range" );
	}
	ci = &cgs.clientinfo[target];

	if ( attacker < 0 || attacker >= MAX_CLIENTS ) {
		attacker = ENTITYNUM_WORLD;
		attackerInfo = NULL;
	} else {
		attackerInfo = FUNC1( CS_PLAYERS + attacker );
	}

	targetInfo = FUNC1( CS_PLAYERS + target );
	if ( !targetInfo ) {
		return;
	}
	FUNC6( targetName, FUNC5( targetInfo, "n" ), sizeof(targetName) - 2);
	FUNC7( targetName, S_COLOR_WHITE );

	message2 = "";

	// check for single client messages

	switch( mod ) {
	case MOD_SUICIDE:
		message = "suicides";
		break;
	case MOD_FALLING:
		message = "cratered";
		break;
	case MOD_CRUSH:
		message = "was squished";
		break;
	case MOD_WATER:
		message = "sank like a rock";
		break;
	case MOD_SLIME:
		message = "melted";
		break;
	case MOD_LAVA:
		message = "does a back flip into the lava";
		break;
	case MOD_TARGET_LASER:
		message = "saw the light";
		break;
	case MOD_TRIGGER_HURT:
		message = "was in the wrong place";
		break;
	default:
		message = NULL;
		break;
	}

	if (attacker == target) {
		gender = ci->gender;
		switch (mod) {
#ifdef MISSIONPACK
		case MOD_KAMIKAZE:
			message = "goes out with a bang";
			break;
#endif
		case MOD_GRENADE_SPLASH:
			if ( gender == GENDER_FEMALE )
				message = "tripped on her own grenade";
			else if ( gender == GENDER_NEUTER )
				message = "tripped on its own grenade";
			else
				message = "tripped on his own grenade";
			break;
		case MOD_ROCKET_SPLASH:
			if ( gender == GENDER_FEMALE )
				message = "blew herself up";
			else if ( gender == GENDER_NEUTER )
				message = "blew itself up";
			else
				message = "blew himself up";
			break;
		case MOD_PLASMA_SPLASH:
			if ( gender == GENDER_FEMALE )
				message = "melted herself";
			else if ( gender == GENDER_NEUTER )
				message = "melted itself";
			else
				message = "melted himself";
			break;
		case MOD_BFG_SPLASH:
			message = "should have used a smaller gun";
			break;
#ifdef MISSIONPACK
		case MOD_PROXIMITY_MINE:
			if( gender == GENDER_FEMALE ) {
				message = "found her prox mine";
			} else if ( gender == GENDER_NEUTER ) {
				message = "found it's prox mine";
			} else {
				message = "found his prox mine";
			}
			break;
#endif
		default:
			if ( gender == GENDER_FEMALE )
				message = "killed herself";
			else if ( gender == GENDER_NEUTER )
				message = "killed itself";
			else
				message = "killed himself";
			break;
		}
	}

	if (message) {
		FUNC4( "%s %s.\n", targetName, message);
		return;
	}

	// check for kill messages from the current clientNum
	if ( attacker == cg.snap->ps.clientNum ) {
		char	*s;

		if ( cgs.gametype < GT_TEAM ) {
			s = FUNC9("You fragged %s\n%s place with %i", targetName, 
				FUNC3( cg.snap->ps.persistant[PERS_RANK] + 1 ),
				cg.snap->ps.persistant[PERS_SCORE] );
		} else {
			s = FUNC9("You fragged %s", targetName );
		}
#ifdef MISSIONPACK
		if (!(cg_singlePlayerActive.integer && cg_cameraOrbit.integer)) {
			CG_CenterPrint( s, SCREEN_HEIGHT * 0.30, BIGCHAR_WIDTH );
		} 
#else
		FUNC0( s, SCREEN_HEIGHT * 0.30, BIGCHAR_WIDTH );
#endif

		// print the text message as well
	}

	// check for double client messages
	if ( !attackerInfo ) {
		attacker = ENTITYNUM_WORLD;
		FUNC8( attackerName, "noname" );
	} else {
		FUNC6( attackerName, FUNC5( attackerInfo, "n" ), sizeof(attackerName) - 2);
		FUNC7( attackerName, S_COLOR_WHITE );
		// check for kill messages about the current clientNum
		if ( target == cg.snap->ps.clientNum ) {
			FUNC6( cg.killerName, attackerName, sizeof( cg.killerName ) );
		}
	}

	if ( attacker != ENTITYNUM_WORLD ) {
		switch (mod) {
		case MOD_GRAPPLE:
			message = "was caught by";
			break;
		case MOD_GAUNTLET:
			message = "was pummeled by";
			break;
		case MOD_MACHINEGUN:
			message = "was machinegunned by";
			break;
		case MOD_SHOTGUN:
			message = "was gunned down by";
			break;
		case MOD_GRENADE:
			message = "ate";
			message2 = "'s grenade";
			break;
		case MOD_GRENADE_SPLASH:
			message = "was shredded by";
			message2 = "'s shrapnel";
			break;
		case MOD_ROCKET:
			message = "ate";
			message2 = "'s rocket";
			break;
		case MOD_ROCKET_SPLASH:
			message = "almost dodged";
			message2 = "'s rocket";
			break;
		case MOD_PLASMA:
			message = "was melted by";
			message2 = "'s plasmagun";
			break;
		case MOD_PLASMA_SPLASH:
			message = "was melted by";
			message2 = "'s plasmagun";
			break;
		case MOD_RAILGUN:
			message = "was railed by";
			break;
		case MOD_LIGHTNING:
			message = "was electrocuted by";
			break;
		case MOD_BFG:
		case MOD_BFG_SPLASH:
			message = "was blasted by";
			message2 = "'s BFG";
			break;
#ifdef MISSIONPACK
		case MOD_NAIL:
			message = "was nailed by";
			break;
		case MOD_CHAINGUN:
			message = "got lead poisoning from";
			message2 = "'s Chaingun";
			break;
		case MOD_PROXIMITY_MINE:
			message = "was too close to";
			message2 = "'s Prox Mine";
			break;
		case MOD_KAMIKAZE:
			message = "falls to";
			message2 = "'s Kamikaze blast";
			break;
		case MOD_JUICED:
			message = "was juiced by";
			break;
#endif
		case MOD_TELEFRAG:
			message = "tried to invade";
			message2 = "'s personal space";
			break;
		default:
			message = "was killed by";
			break;
		}

		if (message) {
			FUNC4( "%s %s %s%s\n", 
				targetName, message, attackerName, message2);
			return;
		}
	}

	// we don't know what it was
	FUNC4( "%s died.\n", targetName );
}