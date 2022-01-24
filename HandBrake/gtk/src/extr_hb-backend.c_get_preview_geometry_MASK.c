#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  prefs; int /*<<< orphan*/  settings; } ;
typedef  TYPE_4__ signal_user_data_t ;
struct TYPE_13__ {int width; int height; int /*<<< orphan*/  par; } ;
struct TYPE_16__ {TYPE_2__ geometry; } ;
typedef  TYPE_5__ hb_title_t ;
struct TYPE_17__ {int width; int height; int /*<<< orphan*/  par; } ;
typedef  TYPE_6__ hb_geometry_t ;
struct TYPE_12__ {void* den; void* num; } ;
struct TYPE_14__ {void* height; void* width; TYPE_1__ par; } ;
struct TYPE_18__ {scalar_t__ mode; int modulus; int* crop; TYPE_3__ geometry; scalar_t__ maxHeight; scalar_t__ maxWidth; scalar_t__ itu_par; int /*<<< orphan*/  keep; } ;
typedef  TYPE_7__ hb_geometry_settings_t ;
typedef  int gdouble ;

/* Variables and functions */
 scalar_t__ HB_ANAMORPHIC_LOOSE ; 
 scalar_t__ HB_ANAMORPHIC_STRICT ; 
 int /*<<< orphan*/  HB_KEEP_DISPLAY_ASPECT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC3(signal_user_data_t *ud, const hb_title_t *title,
                     hb_geometry_t *srcGeo, hb_geometry_settings_t *uiGeo)
{
    srcGeo->width  = title->geometry.width;
    srcGeo->height = title->geometry.height;
    srcGeo->par    = title->geometry.par;

    uiGeo->mode = FUNC2(ud->settings, "PicturePAR");
    uiGeo->keep = (FUNC0(ud->settings, "PictureKeepRatio") ||
                                 uiGeo->mode == HB_ANAMORPHIC_STRICT  ||
                                 uiGeo->mode == HB_ANAMORPHIC_LOOSE) ?
                                 HB_KEEP_DISPLAY_ASPECT : 0;
    uiGeo->itu_par = 0;
    uiGeo->modulus = FUNC2(ud->settings, "PictureModulus");
    uiGeo->crop[0] = FUNC1(ud->settings, "PictureTopCrop");
    uiGeo->crop[1] = FUNC1(ud->settings, "PictureBottomCrop");
    uiGeo->crop[2] = FUNC1(ud->settings, "PictureLeftCrop");
    uiGeo->crop[3] = FUNC1(ud->settings, "PictureRightCrop");
    uiGeo->geometry.width = FUNC1(ud->settings, "scale_width");
    uiGeo->geometry.height = FUNC1(ud->settings, "scale_height");
    uiGeo->geometry.par.num = FUNC1(ud->settings, "PicturePARWidth");
    uiGeo->geometry.par.den = FUNC1(ud->settings, "PicturePARHeight");
    uiGeo->maxWidth = 0;
    uiGeo->maxHeight = 0;
    if (FUNC0(ud->prefs, "preview_show_crop"))
    {
        gdouble xscale = (gdouble)uiGeo->geometry.width /
                  (title->geometry.width - uiGeo->crop[2] - uiGeo->crop[3]);
        gdouble yscale = (gdouble)uiGeo->geometry.height /
                  (title->geometry.height - uiGeo->crop[0] - uiGeo->crop[1]);

        uiGeo->geometry.width += xscale * (uiGeo->crop[2] + uiGeo->crop[3]);
        uiGeo->geometry.height += yscale * (uiGeo->crop[0] + uiGeo->crop[1]);
        uiGeo->crop[0] = 0;
        uiGeo->crop[1] = 0;
        uiGeo->crop[2] = 0;
        uiGeo->crop[3] = 0;
        uiGeo->modulus = 2;
    }
}