#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
typedef  int /*<<< orphan*/  playerInfo_t ;
struct TYPE_9__ {int curvalue; } ;
struct TYPE_8__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_6__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_7__ {TYPE_1__ field; } ;
struct TYPE_10__ {TYPE_4__ handicap; int /*<<< orphan*/  playerinfo; TYPE_3__ effects; TYPE_2__ name; } ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  LEGS_IDLE ; 
 size_t PITCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t ROLL ; 
 int /*<<< orphan*/  TORSO_STAND ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WP_MACHINEGUN ; 
 size_t YAW ; 
 int /*<<< orphan*/ * gamecodetoui ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_5__ s_playersettings ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  vec3_origin ; 

__attribute__((used)) static void FUNC7( void ) {
	vec3_t	viewangles;
	int		c;
	int		h;

	// name
	FUNC1( s_playersettings.name.field.buffer, FUNC2("name"), sizeof(s_playersettings.name.field.buffer) );

	// effects color
	c = FUNC6( "color1" ) - 1;
	if( c < 0 || c > 6 ) {
		c = 6;
	}
	s_playersettings.effects.curvalue = gamecodetoui[c];

	// model/skin
	FUNC5( &s_playersettings.playerinfo, 0, sizeof(playerInfo_t) );
	
	viewangles[YAW]   = 180 - 30;
	viewangles[PITCH] = 0;
	viewangles[ROLL]  = 0;

	FUNC4( &s_playersettings.playerinfo, FUNC2( "model" ) );
	FUNC3( &s_playersettings.playerinfo, LEGS_IDLE, TORSO_STAND, viewangles, vec3_origin, WP_MACHINEGUN, qfalse );

	// handicap
	h = FUNC0( 5, 100, FUNC6("handicap") );
	s_playersettings.handicap.curvalue = 20 - h / 5;
}