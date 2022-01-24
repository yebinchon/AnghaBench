#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec4_t ;
struct TYPE_6__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_2__ rectDef_t ;
struct TYPE_7__ {int botIndex; int characterCount; TYPE_1__* characterList; } ;
struct TYPE_5__ {char* name; } ;

/* Variables and functions */
 int GT_TEAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 char* FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 (char*) ; 
 TYPE_3__ uiInfo ; 

__attribute__((used)) static void FUNC4(rectDef_t *rect, float scale, vec4_t color, int textStyle) {
	int value = uiInfo.botIndex;
	int game = FUNC3("g_gametype");
	const char *text = "";
	if (game >= GT_TEAM) {
		if (value >= uiInfo.characterCount) {
			value = 0;
		}
		text = uiInfo.characterList[value].name;
	} else {
		if (value >= FUNC2()) {
			value = 0;
		}
		text = FUNC1(value);
	}
  FUNC0(rect->x, rect->y, scale, color, text, 0, 0, textStyle);
}