#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpointer ;
struct TYPE_6__ {int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/ * pixbuf; } ;
typedef  TYPE_1__ YuiViewer ;
struct TYPE_7__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_2__ GtkWidget ;
typedef  int /*<<< orphan*/  GdkEventExpose ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_RGB_DITHER_NONE ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(GtkWidget * widget, GdkEventExpose *event, gpointer data) {
	YuiViewer * yv = FUNC0(widget);

	if (yv->pixbuf != NULL) {
		FUNC1(widget->window, NULL, yv->pixbuf, 0, 0, 0, 0, yv->w, yv->h, GDK_RGB_DITHER_NONE, 0, 0);
	}
}