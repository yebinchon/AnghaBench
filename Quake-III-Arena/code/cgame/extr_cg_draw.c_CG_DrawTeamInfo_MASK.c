#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
struct TYPE_14__ {scalar_t__ time; TYPE_2__* snap; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_10__ {int /*<<< orphan*/  teamStatusBar; } ;
struct TYPE_11__ {int teamLastChatPos; int teamChatPos; scalar_t__* teamChatMsgTimes; int /*<<< orphan*/ * teamChatMsgs; TYPE_3__ media; } ;
struct TYPE_8__ {scalar_t__* persistant; } ;
struct TYPE_9__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHATLOC_X ; 
 scalar_t__ CHATLOC_Y ; 
 size_t PERS_TEAM ; 
 int TEAMCHAT_HEIGHT ; 
 scalar_t__ TEAM_BLUE ; 
 scalar_t__ TEAM_RED ; 
 int TINYCHAR_HEIGHT ; 
 int TINYCHAR_WIDTH ; 
 TYPE_7__ cg ; 
 TYPE_6__ cg_teamChatHeight ; 
 TYPE_5__ cg_teamChatTime ; 
 TYPE_4__ cgs ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 

__attribute__((used)) static void FUNC4( void ) {
	int w, h;
	int i, len;
	vec4_t		hcolor;
	int		chatHeight;

#define CHATLOC_Y 420 // bottom end
#define CHATLOC_X 0

	if (cg_teamChatHeight.integer < TEAMCHAT_HEIGHT)
		chatHeight = cg_teamChatHeight.integer;
	else
		chatHeight = TEAMCHAT_HEIGHT;
	if (chatHeight <= 0)
		return; // disabled

	if (cgs.teamLastChatPos != cgs.teamChatPos) {
		if (cg.time - cgs.teamChatMsgTimes[cgs.teamLastChatPos % chatHeight] > cg_teamChatTime.integer) {
			cgs.teamLastChatPos++;
		}

		h = (cgs.teamChatPos - cgs.teamLastChatPos) * TINYCHAR_HEIGHT;

		w = 0;

		for (i = cgs.teamLastChatPos; i < cgs.teamChatPos; i++) {
			len = FUNC2(cgs.teamChatMsgs[i % chatHeight]);
			if (len > w)
				w = len;
		}
		w *= TINYCHAR_WIDTH;
		w += TINYCHAR_WIDTH * 2;

		if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_RED ) {
			hcolor[0] = 1.0f;
			hcolor[1] = 0.0f;
			hcolor[2] = 0.0f;
			hcolor[3] = 0.33f;
		} else if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_BLUE ) {
			hcolor[0] = 0.0f;
			hcolor[1] = 0.0f;
			hcolor[2] = 1.0f;
			hcolor[3] = 0.33f;
		} else {
			hcolor[0] = 0.0f;
			hcolor[1] = 1.0f;
			hcolor[2] = 0.0f;
			hcolor[3] = 0.33f;
		}

		FUNC3( hcolor );
		FUNC0( CHATLOC_X, CHATLOC_Y - h, 640, h, cgs.media.teamStatusBar );
		FUNC3( NULL );

		hcolor[0] = hcolor[1] = hcolor[2] = 1.0f;
		hcolor[3] = 1.0f;

		for (i = cgs.teamChatPos - 1; i >= cgs.teamLastChatPos; i--) {
			FUNC1( CHATLOC_X + TINYCHAR_WIDTH, 
				CHATLOC_Y - (cgs.teamChatPos - i)*TINYCHAR_HEIGHT, 
				cgs.teamChatMsgs[i % chatHeight], hcolor, qfalse, qfalse,
				TINYCHAR_WIDTH, TINYCHAR_HEIGHT, 0 );
		}
	}
}