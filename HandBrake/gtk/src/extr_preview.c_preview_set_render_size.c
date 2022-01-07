
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* preview; int builder; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_8__ {double min_aspect; double max_aspect; int width_inc; int height_inc; } ;
struct TYPE_6__ {int render_width; int render_height; } ;
typedef int GtkWindow ;
typedef int GtkWidget ;
typedef int GhbSurface ;
typedef TYPE_3__ GdkGeometry ;


 int GDK_HINT_ASPECT ;
 int GDK_HINT_RESIZE_INC ;
 int * GHB_WIDGET (int ,char*) ;
 int GTK_WIDGET (int *) ;
 int * GTK_WINDOW (int *) ;
 int ghb_surface_set_geometry_hints (int *,TYPE_3__*,int) ;
 int * ghb_widget_get_surface (int ) ;
 int gtk_widget_set_size_request (int *,int,int) ;
 int gtk_window_resize (int *,int,int) ;
 int gtk_window_unmaximize (int *) ;

void
preview_set_render_size(signal_user_data_t *ud, int width, int height)
{
    GtkWidget * widget;
    GtkWindow * window;
    GhbSurface * ss;
    GdkGeometry geo;

    widget = GHB_WIDGET (ud->builder, "preview_image");
    gtk_widget_set_size_request(widget, width, height);
    window = GTK_WINDOW(GHB_WIDGET(ud->builder, "preview_window"));
    ss = ghb_widget_get_surface(GTK_WIDGET(window));
    gtk_window_unmaximize(window);
    if (ss != ((void*)0))
    {
        geo.min_aspect = (double)(width - 4) / height;
        geo.max_aspect = (double)(width + 4) / height;
        geo.width_inc = geo.height_inc = 2;
        ghb_surface_set_geometry_hints(ss, &geo,
                                       GDK_HINT_ASPECT|GDK_HINT_RESIZE_INC);
    }
    gtk_window_resize(window, width, height);

    ud->preview->render_width = width;
    ud->preview->render_height = height;
}
