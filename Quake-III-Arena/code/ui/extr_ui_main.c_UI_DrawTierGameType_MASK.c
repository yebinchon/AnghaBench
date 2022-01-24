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
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_8__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_3__ rectDef_t ;
struct TYPE_9__ {int tierCount; TYPE_2__* tierList; TYPE_1__* gameTypes; } ;
struct TYPE_7__ {size_t* gameTypes; } ;
struct TYPE_6__ {int /*<<< orphan*/  gameType; } ;

/* Variables and functions */
 int MAPS_PER_TIER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*) ; 
 TYPE_4__ uiInfo ; 

__attribute__((used)) static void FUNC2(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
  int i, j;
	i = FUNC1( "ui_currentTier" );
  if (i < 0 || i >= uiInfo.tierCount) {
    i = 0;
  }
	j = FUNC1("ui_currentMap");
	if (j < 0 || j > MAPS_PER_TIER) {
		j = 0;
	}

  FUNC0(rect->x, rect->y, scale, color, uiInfo.gameTypes[uiInfo.tierList[i].gameTypes[j]].gameType , 0, 0, textStyle);
}