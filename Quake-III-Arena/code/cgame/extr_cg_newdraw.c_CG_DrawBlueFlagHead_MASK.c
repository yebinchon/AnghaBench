#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_7__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
struct TYPE_9__ {double time; } ;
struct TYPE_8__ {int maxclients; TYPE_1__* clientinfo; } ;
struct TYPE_6__ {scalar_t__ team; int powerups; scalar_t__ infoValid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int PW_BLUEFLAG ; 
 scalar_t__ TEAM_RED ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 size_t YAW ; 
 TYPE_4__ cg ; 
 TYPE_3__ cgs ; 
 int FUNC2 (double) ; 

__attribute__((used)) static void FUNC3(rectDef_t *rect) {
  int i;
  for ( i = 0 ; i < cgs.maxclients ; i++ ) {
	  if ( cgs.clientinfo[i].infoValid && cgs.clientinfo[i].team == TEAM_RED  && cgs.clientinfo[i].powerups & ( 1<< PW_BLUEFLAG )) {
      vec3_t angles;
      FUNC1( angles );
 		  angles[YAW] = 180 + 20 * FUNC2( cg.time / 650.0 );;
      FUNC0( rect->x, rect->y, rect->w, rect->h, 0,angles );
      return;
    }
  }
}