#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_5__ {scalar_t__* stats; int* persistant; } ;
struct TYPE_8__ {int attackerTime; int time; TYPE_3__* snap; TYPE_1__ predictedPlayerState; } ;
struct TYPE_6__ {int clientNum; } ;
struct TYPE_7__ {TYPE_2__ ps; } ;

/* Variables and functions */
 int ATTACKER_HEAD_TIME ; 
 float BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 char* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,float,char const*,double) ; 
 int /*<<< orphan*/  FUNC2 (int,float,float,float,int,int*) ; 
 scalar_t__ CS_PLAYERS ; 
 double ICON_SIZE ; 
 char* FUNC3 (char const*,char*) ; 
 int MAX_CLIENTS ; 
 size_t PERS_ATTACKER ; 
 size_t PITCH ; 
 int FUNC4 (char const*) ; 
 size_t ROLL ; 
 size_t STAT_HEALTH ; 
 size_t YAW ; 
 TYPE_4__ cg ; 

__attribute__((used)) static float FUNC5( float y ) {
	int			t;
	float		size;
	vec3_t		angles;
	const char	*info;
	const char	*name;
	int			clientNum;

	if ( cg.predictedPlayerState.stats[STAT_HEALTH] <= 0 ) {
		return y;
	}

	if ( !cg.attackerTime ) {
		return y;
	}

	clientNum = cg.predictedPlayerState.persistant[PERS_ATTACKER];
	if ( clientNum < 0 || clientNum >= MAX_CLIENTS || clientNum == cg.snap->ps.clientNum ) {
		return y;
	}

	t = cg.time - cg.attackerTime;
	if ( t > ATTACKER_HEAD_TIME ) {
		cg.attackerTime = 0;
		return y;
	}

	size = ICON_SIZE * 1.25;

	angles[PITCH] = 0;
	angles[YAW] = 180;
	angles[ROLL] = 0;
	FUNC2( 640 - size, y, size, size, clientNum, angles );

	info = FUNC0( CS_PLAYERS + clientNum );
	name = FUNC3(  info, "n" );
	y += size;
	FUNC1( 640 - ( FUNC4( name ) * BIGCHAR_WIDTH), y, name, 0.5 );

	return y + BIGCHAR_HEIGHT + 2;
}