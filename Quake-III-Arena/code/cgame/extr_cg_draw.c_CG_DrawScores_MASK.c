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
typedef  float* vec4_t ;
typedef  int qboolean ;
typedef  int /*<<< orphan*/  gitem_t ;
struct TYPE_10__ {TYPE_2__* snap; } ;
struct TYPE_8__ {int /*<<< orphan*/  selectShader; int /*<<< orphan*/ * flagShader; int /*<<< orphan*/ * redFlagShader; int /*<<< orphan*/ * blueFlagShader; } ;
struct TYPE_9__ {int scores1; int scores2; scalar_t__ gametype; int blueflag; int redflag; int flagStatus; int capturelimit; int fraglimit; TYPE_3__ media; } ;
struct TYPE_6__ {int* persistant; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int BIGCHAR_HEIGHT ; 
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC1 (int,float,char const*,float) ; 
 int /*<<< orphan*/  FUNC2 (int,float,int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,float,int,int,float*) ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_TEAM ; 
 size_t PERS_SCORE ; 
 size_t PERS_TEAM ; 
 int /*<<< orphan*/  PW_BLUEFLAG ; 
 int /*<<< orphan*/  PW_NEUTRALFLAG ; 
 int /*<<< orphan*/  PW_REDFLAG ; 
 int SCORE_NOT_PRESENT ; 
 int TEAM_BLUE ; 
 int TEAM_RED ; 
 int TEAM_SPECTATOR ; 
 TYPE_5__ cg ; 
 TYPE_4__ cgs ; 
 char* FUNC5 (char*,int) ; 

__attribute__((used)) static float FUNC6( float y ) {
	const char	*s;
	int			s1, s2, score;
	int			x, w;
	int			v;
	vec4_t		color;
	float		y1;
	gitem_t		*item;

	s1 = cgs.scores1;
	s2 = cgs.scores2;

	y -=  BIGCHAR_HEIGHT + 8;

	y1 = y;

	// draw from the right side to left
	if ( cgs.gametype >= GT_TEAM ) {
		x = 640;
		color[0] = 0.0f;
		color[1] = 0.0f;
		color[2] = 1.0f;
		color[3] = 0.33f;
		s = FUNC5( "%2i", s2 );
		w = FUNC3( s ) * BIGCHAR_WIDTH + 8;
		x -= w;
		FUNC4( x, y-4,  w, BIGCHAR_HEIGHT+8, color );
		if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_BLUE ) {
			FUNC2( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
		}
		FUNC1( x + 4, y, s, 1.0F);

		if ( cgs.gametype == GT_CTF ) {
			// Display flag status
			item = FUNC0( PW_BLUEFLAG );

			if (item) {
				y1 = y - BIGCHAR_HEIGHT - 8;
				if( cgs.blueflag >= 0 && cgs.blueflag <= 2 ) {
					FUNC2( x, y1-4, w, BIGCHAR_HEIGHT+8, cgs.media.blueFlagShader[cgs.blueflag] );
				}
			}
		}
		color[0] = 1.0f;
		color[1] = 0.0f;
		color[2] = 0.0f;
		color[3] = 0.33f;
		s = FUNC5( "%2i", s1 );
		w = FUNC3( s ) * BIGCHAR_WIDTH + 8;
		x -= w;
		FUNC4( x, y-4,  w, BIGCHAR_HEIGHT+8, color );
		if ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_RED ) {
			FUNC2( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
		}
		FUNC1( x + 4, y, s, 1.0F);

		if ( cgs.gametype == GT_CTF ) {
			// Display flag status
			item = FUNC0( PW_REDFLAG );

			if (item) {
				y1 = y - BIGCHAR_HEIGHT - 8;
				if( cgs.redflag >= 0 && cgs.redflag <= 2 ) {
					FUNC2( x, y1-4, w, BIGCHAR_HEIGHT+8, cgs.media.redFlagShader[cgs.redflag] );
				}
			}
		}

#ifdef MISSIONPACK
		if ( cgs.gametype == GT_1FCTF ) {
			// Display flag status
			item = BG_FindItemForPowerup( PW_NEUTRALFLAG );

			if (item) {
				y1 = y - BIGCHAR_HEIGHT - 8;
				if( cgs.flagStatus >= 0 && cgs.flagStatus <= 3 ) {
					CG_DrawPic( x, y1-4, w, BIGCHAR_HEIGHT+8, cgs.media.flagShader[cgs.flagStatus] );
				}
			}
		}
#endif
		if ( cgs.gametype >= GT_CTF ) {
			v = cgs.capturelimit;
		} else {
			v = cgs.fraglimit;
		}
		if ( v ) {
			s = FUNC5( "%2i", v );
			w = FUNC3( s ) * BIGCHAR_WIDTH + 8;
			x -= w;
			FUNC1( x + 4, y, s, 1.0F);
		}

	} else {
		qboolean	spectator;

		x = 640;
		score = cg.snap->ps.persistant[PERS_SCORE];
		spectator = ( cg.snap->ps.persistant[PERS_TEAM] == TEAM_SPECTATOR );

		// always show your score in the second box if not in first place
		if ( s1 != score ) {
			s2 = score;
		}
		if ( s2 != SCORE_NOT_PRESENT ) {
			s = FUNC5( "%2i", s2 );
			w = FUNC3( s ) * BIGCHAR_WIDTH + 8;
			x -= w;
			if ( !spectator && score == s2 && score != s1 ) {
				color[0] = 1.0f;
				color[1] = 0.0f;
				color[2] = 0.0f;
				color[3] = 0.33f;
				FUNC4( x, y-4,  w, BIGCHAR_HEIGHT+8, color );
				FUNC2( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
			} else {
				color[0] = 0.5f;
				color[1] = 0.5f;
				color[2] = 0.5f;
				color[3] = 0.33f;
				FUNC4( x, y-4,  w, BIGCHAR_HEIGHT+8, color );
			}	
			FUNC1( x + 4, y, s, 1.0F);
		}

		// first place
		if ( s1 != SCORE_NOT_PRESENT ) {
			s = FUNC5( "%2i", s1 );
			w = FUNC3( s ) * BIGCHAR_WIDTH + 8;
			x -= w;
			if ( !spectator && score == s1 ) {
				color[0] = 0.0f;
				color[1] = 0.0f;
				color[2] = 1.0f;
				color[3] = 0.33f;
				FUNC4( x, y-4,  w, BIGCHAR_HEIGHT+8, color );
				FUNC2( x, y-4, w, BIGCHAR_HEIGHT+8, cgs.media.selectShader );
			} else {
				color[0] = 0.5f;
				color[1] = 0.5f;
				color[2] = 0.5f;
				color[3] = 0.33f;
				FUNC4( x, y-4,  w, BIGCHAR_HEIGHT+8, color );
			}	
			FUNC1( x + 4, y, s, 1.0F);
		}

		if ( cgs.fraglimit ) {
			s = FUNC5( "%2i", cgs.fraglimit );
			w = FUNC3( s ) * BIGCHAR_WIDTH + 8;
			x -= w;
			FUNC1( x + 4, y, s, 1.0F);
		}

	}

	return y1 - 8;
}