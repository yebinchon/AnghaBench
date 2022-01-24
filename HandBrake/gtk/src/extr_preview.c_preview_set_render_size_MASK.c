#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* preview; int /*<<< orphan*/  builder; } ;
typedef  TYPE_2__ signal_user_data_t ;
struct TYPE_8__ {double min_aspect; double max_aspect; int width_inc; int height_inc; } ;
struct TYPE_6__ {int render_width; int render_height; } ;
typedef  int /*<<< orphan*/  GtkWindow ;
typedef  int /*<<< orphan*/  GtkWidget ;
typedef  int /*<<< orphan*/  GhbSurface ;
typedef  TYPE_3__ GdkGeometry ;

/* Variables and functions */
 int GDK_HINT_ASPECT ; 
 int GDK_HINT_RESIZE_INC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8(signal_user_data_t *ud, int width, int height)
{
    GtkWidget     * widget;
    GtkWindow     * window;
    GhbSurface    * ss;
    GdkGeometry     geo;

    widget = FUNC0 (ud->builder, "preview_image");
    FUNC5(widget, width, height);
    window = FUNC2(FUNC0(ud->builder, "preview_window"));
    ss = FUNC4(FUNC1(window));
    FUNC7(window);
    if (ss != NULL)
    {
        geo.min_aspect = (double)(width - 4) / height;
        geo.max_aspect = (double)(width + 4) / height;
        geo.width_inc = geo.height_inc = 2;
        FUNC3(ss, &geo,
                                       GDK_HINT_ASPECT|GDK_HINT_RESIZE_INC);
    }
    FUNC6(window, width, height);

    ud->preview->render_width = width;
    ud->preview->render_height = height;
}