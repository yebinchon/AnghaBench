
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_10__ ;


struct TYPE_30__ {int prefs; int builder; int settings; } ;
typedef TYPE_6__ signal_user_data_t ;
struct TYPE_29__ {int width; int height; } ;
struct TYPE_31__ {TYPE_5__ geometry; int index; } ;
typedef TYPE_7__ hb_title_t ;
struct TYPE_32__ {int width; int height; int* data; TYPE_3__* plane; } ;
typedef TYPE_8__ hb_image_t ;
struct TYPE_28__ {int den; int num; } ;
struct TYPE_33__ {TYPE_4__ par; } ;
typedef TYPE_9__ hb_geometry_t ;
struct TYPE_25__ {int num; int den; } ;
struct TYPE_26__ {int width; int height; TYPE_1__ par; } ;
struct TYPE_24__ {TYPE_2__ geometry; } ;
typedef TYPE_10__ hb_geometry_settings_t ;
typedef int guint8 ;
typedef int guint32 ;
typedef int gint ;
typedef int gdouble ;
typedef int gboolean ;
struct TYPE_27__ {int stride; } ;
typedef int GdkPixbuf ;


 int FALSE ;
 int GDK_COLORSPACE_RGB ;
 int GDK_INTERP_HYPER ;
 int GHB_WIDGET (int ,char*) ;
 scalar_t__ HB_FILTER_INVALID ;
 int g_object_unref (int *) ;
 int gdk_pixbuf_get_n_channels (int *) ;
 int* gdk_pixbuf_get_pixels (int *) ;
 int gdk_pixbuf_get_rowstride (int *) ;
 int * gdk_pixbuf_new (int ,int ,int,int,int) ;
 int * gdk_pixbuf_scale_simple (int *,int,int,int ) ;
 int get_preview_geometry (TYPE_6__*,TYPE_7__ const*,TYPE_9__*,TYPE_10__*) ;
 scalar_t__ ghb_dict_get_bool (int ,char*) ;
 int ghb_dict_get_int (int ,char*) ;
 int ghb_monitor_get_size (int ,int*,int*) ;
 int ghb_par_scale (TYPE_6__*,int*,int*,int ,int ) ;
 scalar_t__ ghb_settings_combo_int (int ,char*) ;
 int h_scan ;
 int hash_pixbuf (int *,int,int,int,int,int,int) ;
 TYPE_8__* hb_get_preview2 (int ,int ,int,TYPE_10__*,int) ;
 int hb_image_close (TYPE_8__**) ;
 int hb_set_anamorphic_size2 (TYPE_9__*,TYPE_10__*,TYPE_9__*) ;

GdkPixbuf*
ghb_get_preview_image(
    const hb_title_t *title,
    gint index,
    signal_user_data_t *ud,
    gint *out_width,
    gint *out_height)
{
    hb_geometry_t srcGeo, resultGeo;
    hb_geometry_settings_t uiGeo;

    if( title == ((void*)0) ) return ((void*)0);

    gboolean deinterlace;
    deinterlace = ghb_settings_combo_int(ud->settings,
                            "PictureDeinterlaceFilter") != HB_FILTER_INVALID;



    get_preview_geometry(ud, title, &srcGeo, &uiGeo);



    hb_set_anamorphic_size2(&srcGeo, &uiGeo, &resultGeo);


    ghb_par_scale(ud, &uiGeo.geometry.width, &uiGeo.geometry.height,
                      resultGeo.par.num, resultGeo.par.den);
    uiGeo.geometry.par.num = 1;
    uiGeo.geometry.par.den = 1;

    GdkPixbuf *preview;
    hb_image_t *image;
    image = hb_get_preview2(h_scan, title->index, index, &uiGeo, deinterlace);

    if (image == ((void*)0))
    {
        preview = gdk_pixbuf_new(GDK_COLORSPACE_RGB, FALSE, 8,
                                 title->geometry.width, title->geometry.height);
        return preview;
    }





    preview = gdk_pixbuf_new(GDK_COLORSPACE_RGB, FALSE, 8,
                             image->width, image->height);
    guint8 *pixels = gdk_pixbuf_get_pixels(preview);

    guint8 *src_line = image->data;
    guint8 *dst = pixels;

    gint ii, jj;
    gint channels = gdk_pixbuf_get_n_channels(preview);
    gint stride = gdk_pixbuf_get_rowstride(preview);
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

    *out_width = ghb_dict_get_int(ud->settings, "scale_width");
    *out_height = ghb_dict_get_int(ud->settings, "scale_height");
    ghb_par_scale(ud, out_width, out_height,
                  resultGeo.par.num, resultGeo.par.den);

    gint c0, c1, c2, c3;
    c0 = ghb_dict_get_int(ud->settings, "PictureTopCrop");
    c1 = ghb_dict_get_int(ud->settings, "PictureBottomCrop");
    c2 = ghb_dict_get_int(ud->settings, "PictureLeftCrop");
    c3 = ghb_dict_get_int(ud->settings, "PictureRightCrop");

    gdouble xscale, yscale;
    if (ghb_dict_get_bool(ud->prefs, "preview_show_crop"))
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


    if (ghb_dict_get_bool(ud->prefs, "reduce_hd_preview"))
    {
        gint factor = 80;
        gint s_w, s_h;

        ghb_monitor_get_size(GHB_WIDGET(ud->builder, "hb_window"), &s_w, &s_h);
        if (s_w > 0 && s_h > 0 &&
            (previewWidth > s_w * factor / 100 ||
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
            scaled_preview = gdk_pixbuf_scale_simple(preview,
                            previewWidth, previewHeight, GDK_INTERP_HYPER);
            g_object_unref(preview);
            preview = scaled_preview;
        }
    }

    if (ghb_dict_get_bool(ud->prefs, "preview_show_crop"))
    {
        c0 *= yscale;
        c1 *= yscale;
        c2 *= xscale;
        c3 *= xscale;


        hash_pixbuf(preview, 0, 0, previewWidth, c0, 32, 0);

        hash_pixbuf(preview, 0, previewHeight-c1, previewWidth, c1, 32, 0);

        hash_pixbuf(preview, 0, 0, c2, previewHeight, 32, 1);

        hash_pixbuf(preview, previewWidth-c3, 0, c3, previewHeight, 32, 1);
    }
    hb_image_close(&image);
    return preview;
}
