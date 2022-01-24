#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {float x; float w; } ;
typedef  TYPE_3__ rectDef_t ;
typedef  int /*<<< orphan*/  qboolean ;
struct TYPE_10__ {int flags; TYPE_3__ rect; } ;
struct TYPE_9__ {int x; int w; } ;
struct TYPE_12__ {scalar_t__ cvar; TYPE_2__ window; TYPE_1__ textRect; scalar_t__ text; TYPE_5__* typeData; } ;
typedef  TYPE_4__ itemDef_t ;
struct TYPE_13__ {float maxVal; float minVal; } ;
typedef  TYPE_5__ editFieldDef_t ;
struct TYPE_14__ {float cursorx; int /*<<< orphan*/  (* Print ) (char*) ;int /*<<< orphan*/  (* setCVar ) (scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  cursory; } ;

/* Variables and functions */
 TYPE_8__* DC ; 
 int K_ENTER ; 
 int K_MOUSE1 ; 
 int K_MOUSE2 ; 
 int K_MOUSE3 ; 
 scalar_t__ FUNC0 (TYPE_3__*,float,int /*<<< orphan*/ ) ; 
 scalar_t__ SLIDER_THUMB_WIDTH ; 
 float SLIDER_WIDTH ; 
 int WINDOW_HASFOCUS ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,float) ; 

qboolean FUNC4(itemDef_t *item, int key, qboolean down) {
	float x, value, width, work;

	//DC->Print("slider handle key\n");
	if (item->window.flags & WINDOW_HASFOCUS && item->cvar && FUNC0(&item->window.rect, DC->cursorx, DC->cursory)) {
		if (key == K_MOUSE1 || key == K_ENTER || key == K_MOUSE2 || key == K_MOUSE3) {
			editFieldDef_t *editDef = item->typeData;
			if (editDef) {
				rectDef_t testRect;
				width = SLIDER_WIDTH;
				if (item->text) {
					x = item->textRect.x + item->textRect.w + 8;
				} else {
					x = item->window.rect.x;
				}

				testRect = item->window.rect;
				testRect.x = x;
				value = (float)SLIDER_THUMB_WIDTH / 2;
				testRect.x -= value;
				//DC->Print("slider x: %f\n", testRect.x);
				testRect.w = (SLIDER_WIDTH + (float)SLIDER_THUMB_WIDTH / 2);
				//DC->Print("slider w: %f\n", testRect.w);
				if (FUNC0(&testRect, DC->cursorx, DC->cursory)) {
					work = DC->cursorx - x;
					value = work / width;
					value *= (editDef->maxVal - editDef->minVal);
					// vm fuckage
					// value = (((float)(DC->cursorx - x)/ SLIDER_WIDTH) * (editDef->maxVal - editDef->minVal));
					value += editDef->minVal;
					DC->setCVar(item->cvar, FUNC3("%f", value));
					return qtrue;
				}
			}
		}
	}
	DC->Print("slider handle key exit\n");
	return qfalse;
}