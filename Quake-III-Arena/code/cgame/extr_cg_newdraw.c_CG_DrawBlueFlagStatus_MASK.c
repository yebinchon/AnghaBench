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
typedef  int /*<<< orphan*/ * vec4_t ;
struct TYPE_8__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ rectDef_t ;
typedef  scalar_t__ qhandle_t ;
typedef  int /*<<< orphan*/  gitem_t ;
struct TYPE_7__ {scalar_t__* flagShaders; scalar_t__ blueCubeIcon; } ;
struct TYPE_9__ {scalar_t__ gametype; int blueflag; TYPE_2__ media; } ;
struct TYPE_6__ {int member_2; int member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_HARVESTER ; 
 int /*<<< orphan*/  PW_BLUEFLAG ; 
 TYPE_4__ cgs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(rectDef_t *rect, qhandle_t shader) {
	if (cgs.gametype != GT_CTF && cgs.gametype != GT_1FCTF) {
		if (cgs.gametype == GT_HARVESTER) {
		  vec4_t color = {0, 0, 1, 1};
		  FUNC2(color);
	    FUNC1( rect->x, rect->y, rect->w, rect->h, cgs.media.blueCubeIcon );
		  FUNC2(NULL);
		}
		return;
	}
  if (shader) {
		FUNC1( rect->x, rect->y, rect->w, rect->h, shader );
  } else {
	  gitem_t *item = FUNC0( PW_BLUEFLAG );
    if (item) {
		  vec4_t color = {0, 0, 1, 1};
		  FUNC2(color);
	    if( cgs.blueflag >= 0 && cgs.blueflag <= 2 ) {
		    FUNC1( rect->x, rect->y, rect->w, rect->h, cgs.media.flagShaders[cgs.blueflag] );
			} else {
		    FUNC1( rect->x, rect->y, rect->w, rect->h, cgs.media.flagShaders[0] );
			}
		  FUNC2(NULL);
	  }
  }
}