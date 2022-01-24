#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_30__ {int /*<<< orphan*/  prefs; int /*<<< orphan*/  builder; int /*<<< orphan*/  settings; } ;
typedef  TYPE_6__ signal_user_data_t ;
struct TYPE_29__ {int width; int height; } ;
struct TYPE_31__ {TYPE_5__ geometry; int /*<<< orphan*/  index; } ;
typedef  TYPE_7__ hb_title_t ;
struct TYPE_32__ {int width; int height; int* data; TYPE_3__* plane; } ;
typedef  TYPE_8__ hb_image_t ;
struct TYPE_28__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_33__ {TYPE_4__ par; } ;
typedef  TYPE_9__ hb_geometry_t ;
struct TYPE_25__ {int num; int den; } ;
struct TYPE_26__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_24__ {TYPE_2__ geometry; } ;
typedef  TYPE_10__ hb_geometry_settings_t ;
typedef  int guint8 ;
typedef  int guint32 ;
typedef  int gint ;
typedef  int gdouble ;
typedef  int gboolean ;
struct TYPE_27__ {int /*<<< orphan*/  stride; } ;
typedef  int /*<<< orphan*/  GdkPixbuf ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GDK_COLORSPACE_RGB ; 
 int /*<<< orphan*/  GDK_INTERP_HYPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ HB_FILTER_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_7__ const*,TYPE_9__*,TYPE_10__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  h_scan ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,int,int,int,int,int) ; 
 TYPE_8__* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_10__*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_8__**) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_9__*,TYPE_10__*,TYPE_9__*) ; 

GdkPixbuf*
FUNC17(
    const hb_title_t *title,
    gint index,
    signal_user_data_t *ud,
    gint *out_width,
    gint *out_height)
{
    hb_geometry_t srcGeo, resultGeo;
    hb_geometry_settings_t uiGeo;

    if( title == NULL ) return NULL;

    gboolean deinterlace;
    deinterlace = FUNC12(ud->settings,
                            "PictureDeinterlaceFilter") != HB_FILTER_INVALID;

    // Get the geometry settings for the preview.  This will disable
    // cropping if the setting to show the cropped region is enabled.
    FUNC7(ud, title, &srcGeo, &uiGeo);

    // hb_get_preview doesn't compensate for anamorphic, so lets
    // calculate scale factors
    FUNC16(&srcGeo, &uiGeo, &resultGeo);

    // Rescale preview dimensions to adjust for screen PAR and settings PAR
    FUNC11(ud, &uiGeo.geometry.width, &uiGeo.geometry.height,
                      resultGeo.par.num, resultGeo.par.den);
    uiGeo.geometry.par.num = 1;
    uiGeo.geometry.par.den = 1;

    GdkPixbuf *preview;
    hb_image_t *image;
    image = FUNC14(h_scan, title->index, index, &uiGeo, deinterlace);

    if (image == NULL)
    {
        preview = FUNC5(GDK_COLORSPACE_RGB, FALSE, 8,
                                 title->geometry.width, title->geometry.height);
        return preview;
    }

    // Create an GdkPixbuf and copy the libhb image into it, converting it from
    // libhb's format something suitable.
    // The image data returned by hb_get_preview is 4 bytes per pixel,
    // BGRA format. Alpha is ignored.
    preview = FUNC5(GDK_COLORSPACE_RGB, FALSE, 8,
                             image->width, image->height);
    guint8 *pixels = FUNC3(preview);

    guint8 *src_line = image->data;
    guint8 *dst = pixels;

    gint ii, jj;
    gint channels = FUNC2(preview);
    gint stride = FUNC4(preview);
    guint8 *tmp;

    for (ii = 0; ii < image->height; ii++)
    {
        guint32 *src = (guint32*)src_line;
        tmp = dst;
        for (jj = 0; jj < image->width; jj++)
        {
            tmp[0] = src[0] >> 16;
            tmp[1] = src[0] >> 8;
            tmp[2] = src[0] >> 0;
            tmp += channels;
            src++;
        }
        src_line += image->plane[0].stride;
        dst += stride;
    }

    *out_width = FUNC9(ud->settings, "scale_width");
    *out_height = FUNC9(ud->settings, "scale_height");
    FUNC11(ud, out_width, out_height,
                  resultGeo.par.num, resultGeo.par.den);

    gint c0, c1, c2, c3;
    c0 = FUNC9(ud->settings, "PictureTopCrop");
    c1 = FUNC9(ud->settings, "PictureBottomCrop");
    c2 = FUNC9(ud->settings, "PictureLeftCrop");
    c3 = FUNC9(ud->settings, "PictureRightCrop");

    gdouble xscale, yscale;
    if (FUNC8(ud->prefs, "preview_show_crop"))
    {
        xscale = (gdouble)image->width / title->geometry.width;
        yscale = (gdouble)image->height / title->geometry.height;
    }
    else
    {
        xscale = (gdouble)image->width / (title->geometry.width - c2 - c3);
        yscale = (gdouble)image->height / (title->geometry.height - c0 - c1);
    }

    int previewWidth = image->width;
    int previewHeight = image->height;

    // If the preview is too large to fit the screen, reduce it's size.
    if (FUNC8(ud->prefs, "reduce_hd_preview"))
    {
        gint factor = 80;
        gint s_w, s_h;

        FUNC10(FUNC0(ud->builder, "hb_window"), &s_w, &s_h);
        if (s_w > 0 && s_h > 0 &&
            (previewWidth  > s_w * factor / 100 ||
             previewHeight > s_h * factor / 100))
        {
            GdkPixbuf *scaled_preview;
            int orig_w = previewWidth;
            int orig_h = previewHeight;

            if (previewWidth > s_w * factor / 100)
            {
                previewWidth = s_w * factor / 100;
                previewHeight = previewHeight * previewWidth / orig_w;
            }
            if (previewHeight > s_h * factor / 100)
            {
                previewHeight = s_h * factor / 100;
                previewWidth = orig_w * previewHeight / orig_h;
            }
            xscale *= (gdouble)previewWidth / orig_w;
            yscale *= (gdouble)previewHeight / orig_h;
            scaled_preview = FUNC6(preview,
                            previewWidth, previewHeight, GDK_INTERP_HYPER);
            FUNC1(preview);
            preview = scaled_preview;
        }
    }

    if (FUNC8(ud->prefs, "preview_show_crop"))
    {
        c0 *= yscale;
        c1 *= yscale;
        c2 *= xscale;
        c3 *= xscale;

        // Top
        FUNC13(preview, 0, 0, previewWidth, c0, 32, 0);
        // Bottom
        FUNC13(preview, 0, previewHeight-c1, previewWidth, c1, 32, 0);
        // Left
        FUNC13(preview, 0, 0, c2, previewHeight, 32, 1);
        // Right
        FUNC13(preview, previewWidth-c3, 0, c3, previewHeight, 32, 1);
    }
    FUNC15(&image);
    return preview;
}