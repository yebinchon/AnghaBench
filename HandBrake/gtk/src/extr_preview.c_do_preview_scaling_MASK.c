#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* preview; } ;
typedef  TYPE_2__ signal_user_data_t ;
struct TYPE_5__ {int render_width; int render_height; } ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int /*<<< orphan*/  GDK_INTERP_BILINEAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 

GdkPixbuf * FUNC5(signal_user_data_t *ud, GdkPixbuf *pix)
{
    int         preview_width, preview_height, width, height;
    GdkPixbuf * scaled_preview;

    if (pix == NULL)
    {
        return NULL;
    }

    preview_width  = FUNC2(pix);
    preview_height = FUNC1(pix);

    if (ud->preview->render_width <= 0 || ud->preview->render_height <= 0)
    {
        // resize preview window to fit preview
        FUNC4(ud, preview_width, preview_height);
        FUNC0(pix);
        return pix;
    }

    // Scale if necessary
    if (preview_width  != ud->preview->render_width ||
        preview_height != ud->preview->render_height)
    {
        double xscale, yscale;

        xscale = (double)ud->preview->render_width  / preview_width;
        yscale = (double)ud->preview->render_height / preview_height;
        if (xscale <= yscale)
        {
            width  = ud->preview->render_width;
            height = preview_height * xscale;
        }
        else
        {
            width  = preview_width * yscale;
            height = ud->preview->render_height;
        }
        // Allow some slop in aspect ratio so that we fill the window
        int delta = ud->preview->render_width - width;
        if (delta > 0 && delta <= 16)
            width = ud->preview->render_width;

        delta = ud->preview->render_height - height;
        if (delta > 0 && delta <= 16)
            height = ud->preview->render_height;

        scaled_preview = FUNC3(pix, width, height,
                                                 GDK_INTERP_BILINEAR);
        return scaled_preview;
    }
    else
    {
        FUNC0(pix);
    }
    return pix;
}