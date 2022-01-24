#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  guchar ;
struct TYPE_10__ {int pixels_width; int pixels_height; int pixels_rowstride; int is_init; } ;
typedef  TYPE_2__ YuiGl ;
struct TYPE_12__ {int /*<<< orphan*/  (* GetGlSize ) (int*,int*) ;} ;
struct TYPE_9__ {int width; int height; } ;
struct TYPE_11__ {int /*<<< orphan*/  window; TYPE_1__ allocation; } ;
typedef  int /*<<< orphan*/  GdkPixbuf ;
typedef  int /*<<< orphan*/  GdkGLDrawable ;
typedef  int /*<<< orphan*/  GdkGLContext ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_COLORSPACE_RGB ; 
 int /*<<< orphan*/  GDK_INTERP_NEAREST ; 
 int /*<<< orphan*/  GDK_RGB_DITHER_NONE ; 
 TYPE_4__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_6__* VIDCore ; 
 int X_NOSCALE ; 
 int Y_NOSCALE ; 
 int /*<<< orphan*/ * dispbuffer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int*,int*) ; 

void FUNC11(YuiGl * glxarea) {
#ifdef HAVE_LIBGTKGLEXT
	GdkGLContext *glcontext = gtk_widget_get_gl_context (GTK_WIDGET(glxarea));
	GdkGLDrawable *gldrawable = gtk_widget_get_gl_drawable (GTK_WIDGET(glxarea));

	if (!gdk_gl_drawable_make_current (gldrawable, glcontext)) {
		g_print("Cannot set gl drawable current\n");
		return;
	}

	gdk_gl_drawable_swap_buffers(gldrawable);
#else
	int buf_width, buf_height;
	GdkPixbuf * pixbuf, * scaledpixbuf;

	VIDCore->GetGlSize( &buf_width, &buf_height );
	glxarea->pixels_width = FUNC0(glxarea)->allocation.width;
	glxarea->pixels_height = FUNC0(glxarea)->allocation.height;
	glxarea->pixels_rowstride = glxarea->pixels_width * 4;
	glxarea->pixels_rowstride += (glxarea->pixels_rowstride % 4)? (4 - (glxarea->pixels_rowstride % 4)): 0;

	if (dispbuffer == NULL) return;

	pixbuf = FUNC6((const guchar *) dispbuffer, GDK_COLORSPACE_RGB, TRUE, 8,
			buf_width, buf_height, buf_width*4, NULL, NULL);

	if (( glxarea->pixels_width < buf_width + X_NOSCALE )&&( glxarea->pixels_height < buf_height + Y_NOSCALE )) {

	  FUNC3(FUNC0(glxarea)->window, NULL, pixbuf, 0, 0,
			  (glxarea->pixels_width-buf_width)/2, (glxarea->pixels_height-buf_height)/2,
			  buf_width, buf_height, GDK_RGB_DITHER_NONE, 0, 0);
	} else {

	  scaledpixbuf = FUNC7(pixbuf, 
						 glxarea->pixels_width, glxarea->pixels_height, GDK_INTERP_NEAREST );
	  FUNC3(FUNC0(glxarea)->window, NULL, 
			  scaledpixbuf, 0, 0, 0, 0, glxarea->pixels_width, glxarea->pixels_height, 
			  GDK_RGB_DITHER_NONE, 0, 0);
	  FUNC1(scaledpixbuf);
	}
	FUNC1(pixbuf);
#endif
	glxarea->is_init = 1;
}