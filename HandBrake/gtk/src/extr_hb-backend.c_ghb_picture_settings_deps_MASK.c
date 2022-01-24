#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_1__ signal_user_data_t ;
typedef  scalar_t__ gint ;
typedef  int gboolean ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ HB_ANAMORPHIC_AUTO ; 
 scalar_t__ HB_ANAMORPHIC_CUSTOM ; 
 scalar_t__ HB_ANAMORPHIC_LOOSE ; 
 scalar_t__ HB_ANAMORPHIC_STRICT ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void
FUNC4(signal_user_data_t *ud)
{
    gboolean autoscale, keep_aspect, enable_keep_aspect;
    gboolean enable_scale_width, enable_scale_height;
    gboolean enable_disp_width, enable_disp_height, enable_par;
    gint pic_par;
    GtkWidget *widget;

    pic_par = FUNC2(ud->settings, "PicturePAR");
    enable_keep_aspect = (pic_par != HB_ANAMORPHIC_STRICT &&
                          pic_par != HB_ANAMORPHIC_AUTO   &&
                          pic_par != HB_ANAMORPHIC_LOOSE);
    keep_aspect = FUNC1(ud->settings, "PictureKeepRatio");
    autoscale = FUNC1(ud->settings, "autoscale");

    enable_scale_width = enable_scale_height =
                         !autoscale && (pic_par != HB_ANAMORPHIC_STRICT);
    enable_disp_width = (pic_par == HB_ANAMORPHIC_CUSTOM) && !keep_aspect;
    enable_par = (pic_par == HB_ANAMORPHIC_CUSTOM) && !keep_aspect;
    enable_disp_height = FALSE;

    widget = FUNC0(ud->builder, "PictureModulus");
    FUNC3(widget, pic_par != HB_ANAMORPHIC_STRICT);
    widget = FUNC0(ud->builder, "PictureLooseCrop");
    FUNC3(widget, pic_par != HB_ANAMORPHIC_STRICT);
    widget = FUNC0(ud->builder, "scale_width");
    FUNC3(widget, enable_scale_width);
    widget = FUNC0(ud->builder, "scale_height");
    FUNC3(widget, enable_scale_height);
    widget = FUNC0(ud->builder, "PictureDisplayWidth");
    FUNC3(widget, enable_disp_width);
    widget = FUNC0(ud->builder, "PictureDisplayHeight");
    FUNC3(widget, enable_disp_height);
    widget = FUNC0(ud->builder, "PicturePARWidth");
    FUNC3(widget, enable_par);
    widget = FUNC0(ud->builder, "PicturePARHeight");
    FUNC3(widget, enable_par);
    widget = FUNC0(ud->builder, "PictureKeepRatio");
    FUNC3(widget, enable_keep_aspect);
    widget = FUNC0(ud->builder, "autoscale");
    FUNC3(widget, pic_par != HB_ANAMORPHIC_STRICT);
}