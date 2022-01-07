
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* preview; int builder; int settings; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef int hb_title_t ;
typedef int gint ;
struct TYPE_7__ {size_t frame; int * pix; int * scaled_pix; scalar_t__* encoded; } ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 int GTK_PROGRESS_BAR (int *) ;
 int g_object_unref (int *) ;
 int gdk_pixbuf_get_height (int *) ;
 int gdk_pixbuf_get_width (int *) ;
 int ghb_dict_get_int (int ,char*) ;
 int * ghb_get_preview_image (int const*,size_t,TYPE_2__*,int *,int *) ;
 int * ghb_lookup_title (int ,int *) ;
 size_t ghb_widget_int (int *) ;
 int gtk_progress_bar_set_fraction (int ,int ) ;
 int gtk_progress_bar_set_text (int ,char*) ;
 int gtk_widget_hide (int *) ;
 int gtk_widget_show (int *) ;
 int live_preview_stop (TYPE_2__*) ;
 int preview_set_size (TYPE_2__*,int,int) ;

void
init_preview_image(signal_user_data_t *ud)
{
    GtkWidget *widget;
    gint width, height;

    gint title_id, titleindex;
    const hb_title_t *title;

    live_preview_stop(ud);

    title_id = ghb_dict_get_int(ud->settings, "title");
    title = ghb_lookup_title(title_id, &titleindex);
    if (title == ((void*)0) && ud->preview->pix != ((void*)0))
    {
        g_object_unref(ud->preview->pix);
        ud->preview->pix = ((void*)0);
    }
    widget = GHB_WIDGET (ud->builder, "preview_frame");
    ud->preview->frame = ghb_widget_int(widget) - 1;
    if (ud->preview->encoded[ud->preview->frame])
    {
        widget = GHB_WIDGET(ud->builder, "live_progress_box");
        gtk_widget_hide (widget);
        widget = GHB_WIDGET(ud->builder, "live_preview_progress");
        gtk_widget_show (widget);
    }
    else
    {
        widget = GHB_WIDGET(ud->builder, "live_preview_progress");
        gtk_widget_hide (widget);
        widget = GHB_WIDGET(ud->builder, "live_progress_box");
        gtk_widget_show (widget);
        widget = GHB_WIDGET(ud->builder, "live_encode_progress");
        gtk_progress_bar_set_text(GTK_PROGRESS_BAR(widget), "");
        gtk_progress_bar_set_fraction (GTK_PROGRESS_BAR(widget), 0);
    }
    if (ud->preview->pix != ((void*)0))
        g_object_unref(ud->preview->pix);
    if (ud->preview->scaled_pix != ((void*)0))
        g_object_unref(ud->preview->scaled_pix);

    ud->preview->pix = ghb_get_preview_image(title, ud->preview->frame,
                                             ud, &width, &height);
    if (ud->preview->pix == ((void*)0))
        return;

    int pix_width, pix_height;
    pix_width = gdk_pixbuf_get_width(ud->preview->pix);
    pix_height = gdk_pixbuf_get_height(ud->preview->pix);
    preview_set_size(ud, pix_width, pix_height);
}
