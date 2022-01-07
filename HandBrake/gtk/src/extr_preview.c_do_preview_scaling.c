
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_5__ {int render_width; int render_height; } ;
typedef int GdkPixbuf ;


 int GDK_INTERP_BILINEAR ;
 int g_object_ref (int *) ;
 int gdk_pixbuf_get_height (int *) ;
 int gdk_pixbuf_get_width (int *) ;
 int * gdk_pixbuf_scale_simple (int *,int,int,int ) ;
 int preview_set_render_size (TYPE_2__*,int,int) ;

GdkPixbuf * do_preview_scaling(signal_user_data_t *ud, GdkPixbuf *pix)
{
    int preview_width, preview_height, width, height;
    GdkPixbuf * scaled_preview;

    if (pix == ((void*)0))
    {
        return ((void*)0);
    }

    preview_width = gdk_pixbuf_get_width(pix);
    preview_height = gdk_pixbuf_get_height(pix);

    if (ud->preview->render_width <= 0 || ud->preview->render_height <= 0)
    {

        preview_set_render_size(ud, preview_width, preview_height);
        g_object_ref(pix);
        return pix;
    }


    if (preview_width != ud->preview->render_width ||
        preview_height != ud->preview->render_height)
    {
        double xscale, yscale;

        xscale = (double)ud->preview->render_width / preview_width;
        yscale = (double)ud->preview->render_height / preview_height;
        if (xscale <= yscale)
        {
            width = ud->preview->render_width;
            height = preview_height * xscale;
        }
        else
        {
            width = preview_width * yscale;
            height = ud->preview->render_height;
        }

        int delta = ud->preview->render_width - width;
        if (delta > 0 && delta <= 16)
            width = ud->preview->render_width;

        delta = ud->preview->render_height - height;
        if (delta > 0 && delta <= 16)
            height = ud->preview->render_height;

        scaled_preview = gdk_pixbuf_scale_simple(pix, width, height,
                                                 GDK_INTERP_BILINEAR);
        return scaled_preview;
    }
    else
    {
        g_object_ref(pix);
    }
    return pix;
}
