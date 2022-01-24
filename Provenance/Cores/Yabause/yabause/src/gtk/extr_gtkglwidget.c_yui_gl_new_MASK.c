#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ is_init; } ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int GDK_BUTTON_PRESS_MASK ; 
 int GDK_BUTTON_RELEASE_MASK ; 
 int GDK_GL_ATTRIB_LIST_NONE ; 
 int GDK_GL_BLUE_SIZE ; 
 int GDK_GL_DEPTH_SIZE ; 
 int GDK_GL_DOUBLEBUFFER ; 
 int GDK_GL_GREEN_SIZE ; 
 int GDK_GL_RED_SIZE ; 
 int GDK_GL_RGBA ; 
 int /*<<< orphan*/  GDK_GL_RGBA_TYPE ; 
 int GDK_GL_STENCIL_SIZE ; 
 int GDK_POINTER_MOTION_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yui_gl_button_press ; 
 int /*<<< orphan*/  yui_gl_button_release ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  yui_gl_hide_cursor ; 
 int /*<<< orphan*/  yui_gl_resize ; 

GtkWidget * FUNC10(void) {
	GtkWidget * drawingArea;
#ifdef HAVE_LIBGTKGLEXT
	int attribs[] = {
		GDK_GL_RGBA,
		GDK_GL_RED_SIZE,   1,
		GDK_GL_GREEN_SIZE, 1,
		GDK_GL_BLUE_SIZE,  1,

		GDK_GL_DOUBLEBUFFER,

		GDK_GL_DEPTH_SIZE ,1,
        GDK_GL_STENCIL_SIZE ,8,
		GDK_GL_ATTRIB_LIST_NONE 
	};
#endif

	drawingArea = FUNC2(FUNC4(FUNC9(), NULL));
	FUNC3(drawingArea)->is_init = 0;

#ifdef HAVE_LIBGTKGLEXT
	gtk_widget_set_gl_capability(drawingArea, gdk_gl_config_new(attribs), NULL, TRUE, GDK_GL_RGBA_TYPE);
#endif

	FUNC5 (FUNC0(drawingArea),"configure_event", FUNC1(yui_gl_resize),0);

	FUNC7(drawingArea, GDK_POINTER_MOTION_MASK | GDK_BUTTON_PRESS_MASK | GDK_BUTTON_RELEASE_MASK);

	FUNC5(FUNC0(drawingArea), "motion-notify-event", FUNC1(yui_gl_hide_cursor),0);
	FUNC5(FUNC0(drawingArea), "button-press-event", FUNC1(yui_gl_button_press),0);
	FUNC5(FUNC0(drawingArea), "button-release-event", FUNC1(yui_gl_button_release),0);

	return drawingArea;
}