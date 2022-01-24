#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float x; float y; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
typedef  TYPE_1__ rectDef_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_8__ {int /*<<< orphan*/  icon; } ;
typedef  TYPE_2__ gitem_t ;
struct TYPE_9__ {int powerups; } ;
typedef  TYPE_3__ clientInfo_t ;
struct TYPE_10__ {TYPE_3__* clientinfo; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 () ; 
 int PW_NUM_POWERUPS ; 
 TYPE_4__ cgs ; 
 int* sortedTeamPlayers ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4( rectDef_t *rect, qboolean draw2D ) {
	clientInfo_t *ci;
  int j;
  float x, y;

  ci = cgs.clientinfo + sortedTeamPlayers[FUNC2()];
  if (ci) {
    x = rect->x;
    y = rect->y;

		for (j = 0; j < PW_NUM_POWERUPS; j++) {
			if (ci->powerups & (1 << j)) {
				gitem_t	*item;
				item = FUNC0( j );
				if (item) {
				  FUNC1( x, y, rect->w, rect->h, FUNC3( item->icon ) );
					x += 3;
					y += 3;
          return;
				}
			}
		}

  }
}