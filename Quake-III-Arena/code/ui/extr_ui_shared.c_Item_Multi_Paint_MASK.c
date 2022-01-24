#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec4_t ;
struct TYPE_11__ {double* focusColor; } ;
typedef  TYPE_3__ menuDef_t ;
struct TYPE_10__ {int /*<<< orphan*/  y; scalar_t__ x; scalar_t__ w; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  foreColor; } ;
struct TYPE_12__ {int /*<<< orphan*/  textStyle; int /*<<< orphan*/  textscale; TYPE_2__ textRect; scalar_t__ text; TYPE_1__ window; scalar_t__ parent; } ;
typedef  TYPE_4__ itemDef_t ;
struct TYPE_13__ {int realTime; int /*<<< orphan*/  (* drawText ) (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 TYPE_8__* DC ; 
 char* FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (double*,double*,double*,double) ; 
 int PULSE_DIVISOR ; 
 int WINDOW_HASFOCUS ; 
 int /*<<< orphan*/  FUNC3 (double**,int /*<<< orphan*/ *,int) ; 
 double FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(itemDef_t *item) {
	vec4_t newColor, lowLight;
	const char *text = "";
	menuDef_t *parent = (menuDef_t*)item->parent;

	if (item->window.flags & WINDOW_HASFOCUS) {
		lowLight[0] = 0.8 * parent->focusColor[0]; 
		lowLight[1] = 0.8 * parent->focusColor[1]; 
		lowLight[2] = 0.8 * parent->focusColor[2]; 
		lowLight[3] = 0.8 * parent->focusColor[3]; 
		FUNC2(parent->focusColor,lowLight,newColor,0.5+0.5*FUNC4(DC->realTime / PULSE_DIVISOR));
	} else {
		FUNC3(&newColor, &item->window.foreColor, sizeof(vec4_t));
	}

	text = FUNC0(item);

	if (item->text) {
		FUNC1(item);
		DC->drawText(item->textRect.x + item->textRect.w + 8, item->textRect.y, item->textscale, newColor, text, 0, 0, item->textStyle);
	} else {
		DC->drawText(item->textRect.x, item->textRect.y, item->textscale, newColor, text, 0, 0, item->textStyle);
	}
}