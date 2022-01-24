#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * vec4_t ;
struct TYPE_15__ {float y; int x; int w; float h; } ;
typedef  TYPE_4__ rectDef_t ;
typedef  scalar_t__ qhandle_t ;
struct TYPE_16__ {int /*<<< orphan*/  icon; } ;
typedef  TYPE_5__ gitem_t ;
struct TYPE_17__ {scalar_t__ team; char const* name; int powerups; size_t curWeapon; scalar_t__ location; int /*<<< orphan*/  teamTask; int /*<<< orphan*/  armor; int /*<<< orphan*/  health; scalar_t__ infoValid; } ;
typedef  TYPE_6__ clientInfo_t ;
struct TYPE_20__ {int time; TYPE_2__* snap; } ;
struct TYPE_19__ {scalar_t__ weaponIcon; } ;
struct TYPE_14__ {scalar_t__ deferShader; scalar_t__ heartShader; } ;
struct TYPE_18__ {int orderTime; int /*<<< orphan*/  currentOrder; scalar_t__ orderPending; TYPE_3__ media; TYPE_6__* clientinfo; } ;
struct TYPE_12__ {scalar_t__* persistant; } ;
struct TYPE_13__ {TYPE_1__ ps; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,float,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (float*,int,float,float,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,float,int /*<<< orphan*/ ) ; 
 scalar_t__ CS_LOCATIONS ; 
 int MAX_LOCATIONS ; 
 size_t PERS_TEAM ; 
 int PIC_WIDTH ; 
 int PW_NUM_POWERUPS ; 
 TYPE_9__ cg ; 
 TYPE_8__* cg_weapons ; 
 TYPE_7__ cgs ; 
 int numSortedTeamPlayers ; 
 int* sortedTeamPlayers ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(rectDef_t *rect, float text_x, float text_y, float scale, vec4_t color, qhandle_t shader) {
	int xx;
	float y;
	int i, j, len, count;
	const char *p;
	vec4_t		hcolor;
	float pwidth, lwidth, maxx, leftOver;
	clientInfo_t *ci;
	gitem_t	*item;
	qhandle_t h;

	// max player name width
	pwidth = 0;
	count = (numSortedTeamPlayers > 8) ? 8 : numSortedTeamPlayers;
	for (i = 0; i < count; i++) {
		ci = cgs.clientinfo + sortedTeamPlayers[i];
		if ( ci->infoValid && ci->team == cg.snap->ps.persistant[PERS_TEAM]) {
			len = FUNC6( ci->name, scale, 0);
			if (len > pwidth)
				pwidth = len;
		}
	}

	// max location name width
	lwidth = 0;
	for (i = 1; i < MAX_LOCATIONS; i++) {
		p = FUNC1(CS_LOCATIONS + i);
		if (p && *p) {
			len = FUNC6(p, scale, 0);
			if (len > lwidth)
				lwidth = len;
		}
	}

	y = rect->y;

	for (i = 0; i < count; i++) {
		ci = cgs.clientinfo + sortedTeamPlayers[i];
		if ( ci->infoValid && ci->team == cg.snap->ps.persistant[PERS_TEAM]) {

			xx = rect->x + 1;
			for (j = 0; j <= PW_NUM_POWERUPS; j++) {
				if (ci->powerups & (1 << j)) {

					item = FUNC0( j );

					if (item) {
						FUNC2( xx, y, PIC_WIDTH, PIC_WIDTH, FUNC7( item->icon ) );
						xx += PIC_WIDTH;
					}
				}
			}

			// FIXME: max of 3 powerups shown properly
			xx = rect->x + (PIC_WIDTH * 3) + 2;

			FUNC3( ci->health, ci->armor, hcolor );
			FUNC8(hcolor);
			FUNC2( xx, y + 1, PIC_WIDTH - 2, PIC_WIDTH - 2, cgs.media.heartShader );

			//Com_sprintf (st, sizeof(st), "%3i %3i", ci->health,	ci->armor);
			//CG_Text_Paint(xx, y + text_y, scale, hcolor, st, 0, 0); 

			// draw weapon icon
			xx += PIC_WIDTH + 1;

// weapon used is not that useful, use the space for task
#if 0
			if ( cg_weapons[ci->curWeapon].weaponIcon ) {
				CG_DrawPic( xx, y, PIC_WIDTH, PIC_WIDTH, cg_weapons[ci->curWeapon].weaponIcon );
			} else {
				CG_DrawPic( xx, y, PIC_WIDTH, PIC_WIDTH, cgs.media.deferShader );
			}
#endif

			FUNC8(NULL);
			if (cgs.orderPending) {
				// blink the icon
				if ( cg.time > cgs.orderTime - 2500 && (cg.time >> 9 ) & 1 ) {
					h = 0;
				} else {
					h = FUNC4(cgs.currentOrder);
				}
			}	else {
				h = FUNC4(ci->teamTask);
			}

			if (h) {
				FUNC2( xx, y, PIC_WIDTH, PIC_WIDTH, h);
			}

			xx += PIC_WIDTH + 1;

			leftOver = rect->w - xx;
			maxx = xx + leftOver / 3;



			FUNC5(&maxx, xx, y + text_y, scale, color, ci->name, 0, 0); 

			p = FUNC1(CS_LOCATIONS + ci->location);
			if (!p || !*p) {
				p = "unknown";
			}

			xx += leftOver / 3 + 2;
			maxx = rect->w - 4;

			FUNC5(&maxx, xx, y + text_y, scale, color, p, 0, 0); 
			y += text_y + 2;
			if ( y + text_y + 2 > rect->y + rect->h ) {
				break;
			}

		}
	}
}