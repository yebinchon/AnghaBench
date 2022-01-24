#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ scale_busy; int /*<<< orphan*/  settings; int /*<<< orphan*/  builder; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  int /*<<< orphan*/  gint ;
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int) ; 

void
FUNC10(signal_user_data_t *ud, gint mode)
{
    if (ud->scale_busy) return;
    ud->scale_busy = TRUE;

    FUNC4(ud->settings, mode);
    FUNC8(ud);
    FUNC3(ud);

    // Step needs to be at least 2 because odd widths cause scaler crash
    // subsampled chroma requires even crop values.
    GtkWidget *widget;
    int mod = FUNC5(ud->settings, "PictureModulus");
    widget = FUNC0 (ud->builder, "scale_width");
    FUNC9 (FUNC1(widget), mod, 16);
    widget = FUNC0 (ud->builder, "scale_height");
    FUNC9 (FUNC1(widget), mod, 16);

    // "PictureLooseCrop" is a flag that says we prefer to crop extra to
    // satisfy alignment constraints rather than scaling to satisfy them.
    gboolean loosecrop = FUNC2(ud->settings, "PictureLooseCrop");
    if (loosecrop)
    {
        widget = FUNC0 (ud->builder, "PictureTopCrop");
        FUNC9 (FUNC1(widget), mod, 16);
        widget = FUNC0 (ud->builder, "PictureBottomCrop");
        FUNC9 (FUNC1(widget), mod, 16);
        widget = FUNC0 (ud->builder, "PictureLeftCrop");
        FUNC9 (FUNC1(widget), mod, 16);
        widget = FUNC0 (ud->builder, "PictureRightCrop");
        FUNC9 (FUNC1(widget), mod, 16);
    }
    else
    {
        widget = FUNC0 (ud->builder, "PictureTopCrop");
        FUNC9 (FUNC1(widget), 2, 16);
        widget = FUNC0 (ud->builder, "PictureBottomCrop");
        FUNC9 (FUNC1(widget), 2, 16);
        widget = FUNC0 (ud->builder, "PictureLeftCrop");
        FUNC9 (FUNC1(widget), 2, 16);
        widget = FUNC0 (ud->builder, "PictureRightCrop");
        FUNC9 (FUNC1(widget), 2, 16);
    }

    FUNC6(ud, "autoscale", ud->settings);
    FUNC6(ud, "PictureModulus", ud->settings);
    FUNC6(ud, "PictureLooseCrop", ud->settings);
    FUNC6(ud, "PictureKeepRatio", ud->settings);

    FUNC6(ud, "PictureTopCrop", ud->settings);
    FUNC6(ud, "PictureBottomCrop", ud->settings);
    FUNC6(ud, "PictureLeftCrop", ud->settings);
    FUNC6(ud, "PictureRightCrop", ud->settings);

    FUNC6(ud, "scale_width", ud->settings);
    FUNC6(ud, "scale_height", ud->settings);

    FUNC6(ud, "PicturePARWidth", ud->settings);
    FUNC6(ud, "PicturePARHeight", ud->settings);
    FUNC6(ud, "PictureDisplayWidth", ud->settings);
    FUNC6(ud, "PictureDisplayHeight", ud->settings);
    FUNC7(ud);
    ud->scale_busy = FALSE;
}