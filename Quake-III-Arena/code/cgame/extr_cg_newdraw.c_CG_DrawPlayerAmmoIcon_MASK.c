#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_9__ ;
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_18__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_4__ rectDef_t ;
typedef  scalar_t__ qhandle_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_19__ {size_t clientNum; } ;
typedef  TYPE_5__ playerState_t ;
struct TYPE_17__ {size_t weapon; } ;
struct TYPE_20__ {TYPE_3__ currentState; } ;
typedef  TYPE_6__ centity_t ;
struct TYPE_22__ {scalar_t__ integer; } ;
struct TYPE_21__ {scalar_t__ ammoModel; scalar_t__ ammoIcon; } ;
struct TYPE_16__ {size_t weapon; } ;
struct TYPE_15__ {TYPE_5__ ps; } ;
struct TYPE_14__ {double time; TYPE_2__ predictedPlayerState; TYPE_1__* snap; } ;
struct TYPE_13__ {scalar_t__ integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 size_t YAW ; 
 TYPE_11__ cg ; 
 TYPE_10__ cg_draw3dIcons ; 
 TYPE_9__ cg_drawIcons ; 
 TYPE_6__* cg_entities ; 
 TYPE_7__* cg_weapons ; 
 int FUNC3 (double) ; 

__attribute__((used)) static void FUNC4( rectDef_t *rect, qboolean draw2D ) {
	centity_t	*cent;
	playerState_t	*ps;
	vec3_t		angles;
	vec3_t		origin;

	cent = &cg_entities[cg.snap->ps.clientNum];
	ps = &cg.snap->ps;

	if ( draw2D || (!cg_draw3dIcons.integer && cg_drawIcons.integer) ) { // bk001206 - parentheses
	  qhandle_t	icon;
    icon = cg_weapons[ cg.predictedPlayerState.weapon ].ammoIcon;
		if ( icon ) {
		  FUNC1( rect->x, rect->y, rect->w, rect->h, icon );
		}
  } else if (cg_draw3dIcons.integer) {
  	if ( cent->currentState.weapon && cg_weapons[ cent->currentState.weapon ].ammoModel ) {
	    FUNC2( angles );
	  	origin[0] = 70;
  		origin[1] = 0;
  		origin[2] = 0;
  		angles[YAW] = 90 + 20 * FUNC3( cg.time / 1000.0 );
  		FUNC0( rect->x, rect->y, rect->w, rect->h, cg_weapons[ cent->currentState.weapon ].ammoModel, 0, origin, angles );
  	}
  }
}