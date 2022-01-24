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
struct TYPE_7__ {int w; scalar_t__ h; scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_2__ rectDef_t ;
typedef  scalar_t__ qhandle_t ;
struct TYPE_8__ {int* stats; } ;
typedef  TYPE_3__ playerState_t ;
typedef  int /*<<< orphan*/  num ;
struct TYPE_9__ {TYPE_1__* snap; } ;
struct TYPE_6__ {TYPE_3__ ps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,float,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (char*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 
 size_t STAT_HEALTH ; 
 TYPE_4__ cg ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle ) {
	playerState_t	*ps;
  int value;
	char	num[16];

	ps = &cg.snap->ps;

	value = ps->stats[STAT_HEALTH];

	if (shader) {
		FUNC4( color );
		FUNC0(rect->x, rect->y, rect->w, rect->h, shader);
		FUNC4( NULL );
	} else {
		FUNC3 (num, sizeof(num), "%i", value);
	  value = FUNC2(num, scale, 0);
	  FUNC1(rect->x + (rect->w - value) / 2, rect->y + rect->h, scale, color, num, 0, 0, textStyle);
	}
}