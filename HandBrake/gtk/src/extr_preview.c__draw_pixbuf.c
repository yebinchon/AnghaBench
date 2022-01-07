
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef int cairo_t ;
struct TYPE_4__ {int render_width; int render_height; } ;
typedef int GdkPixbuf ;


 int CAIRO_OPERATOR_CLEAR ;
 int MAX (int,int ) ;
 int cairo_fill (int *) ;
 int cairo_paint (int *) ;
 int cairo_rectangle (int *,int ,int ,int,int) ;
 int cairo_restore (int *) ;
 int cairo_save (int *) ;
 int cairo_set_operator (int *,int ) ;
 int cairo_translate (int *,int,int) ;
 int gdk_cairo_set_source_pixbuf (int *,int *,int ,int ) ;
 int gdk_pixbuf_get_height (int *) ;
 int gdk_pixbuf_get_width (int *) ;

__attribute__((used)) static void _draw_pixbuf(signal_user_data_t * ud, cairo_t *cr, GdkPixbuf *pix)
{
    int pix_width, pix_height, hoff, voff;

    cairo_save(cr);
    cairo_rectangle(cr, 0, 0, ud->preview->render_width,
                              ud->preview->render_height);
    cairo_set_operator(cr, CAIRO_OPERATOR_CLEAR);
    cairo_fill(cr);
    cairo_restore(cr);

    pix_width = gdk_pixbuf_get_width(pix);
    pix_height = gdk_pixbuf_get_height(pix);
    hoff = MAX((ud->preview->render_width - pix_width) / 2, 0);
    voff = MAX((ud->preview->render_height - pix_height) / 2, 0);
    if (voff > 0 || hoff > 0)
    {
        cairo_translate(cr, hoff, voff);
    }

    gdk_cairo_set_source_pixbuf(cr, pix, 0, 0);
    cairo_paint(cr);
}
