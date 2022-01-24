#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_4__ {scalar_t__ h; scalar_t__ y; scalar_t__ w; scalar_t__ x; } ;
typedef  TYPE_1__ rectDef_t ;
typedef  int /*<<< orphan*/  qhandle_t ;
typedef  int /*<<< orphan*/  num ;
struct TYPE_5__ {scalar_t__ scores2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,float,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 
 scalar_t__ SCORE_NOT_PRESENT ; 
 TYPE_2__ cgs ; 

__attribute__((used)) static void FUNC3(rectDef_t *rect, float scale, vec4_t color, qhandle_t shader, int textStyle ) {
	int value;
	char num[16];

	if ( cgs.scores2 == SCORE_NOT_PRESENT ) {
		FUNC2 (num, sizeof(num), "-");
	}
	else {
		FUNC2 (num, sizeof(num), "%i", cgs.scores2);
	}
	value = FUNC1(num, scale, 0);
	FUNC0(rect->x + rect->w - value, rect->y + rect->h, scale, color, num, 0, 0, textStyle);
}