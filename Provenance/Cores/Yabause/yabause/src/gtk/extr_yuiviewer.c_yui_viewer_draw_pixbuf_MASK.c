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
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int w; int h; scalar_t__ pixbuf; } ;
typedef  TYPE_1__ YuiViewer ;
struct TYPE_7__ {int /*<<< orphan*/  window; } ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC5(YuiViewer * yv, GdkPixbuf * pixbuf, int w, int h) {
	if (yv->pixbuf) {
		FUNC2(yv->pixbuf);
	}
	yv->pixbuf = FUNC1(pixbuf);
	yv->w = w;
	yv->h = h;
	FUNC3(FUNC0(yv)->window);
	FUNC4(FUNC0(yv), 0, 0, w, h);
}