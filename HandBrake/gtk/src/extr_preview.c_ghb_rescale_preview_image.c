
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int builder; TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_8__ {double width; double height; int pix; int scaled_pix; scalar_t__ render_width; } ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 int do_preview_scaling (TYPE_2__*,int ) ;
 int gtk_widget_queue_draw (int *) ;
 int init_preview_image (TYPE_2__*) ;
 int preview_set_render_size (TYPE_2__*,double,double) ;
 int set_mini_preview_image (TYPE_2__*,int ) ;

void
ghb_rescale_preview_image(signal_user_data_t *ud)
{
    init_preview_image(ud);
    if (ud->preview->width <= 0 || ud->preview->height <= 0)
    {
        return;
    }
    double scale = (double)ud->preview->render_width / ud->preview->width;
    preview_set_render_size(ud, ud->preview->width * scale,
                                ud->preview->height * scale);


    set_mini_preview_image(ud, ud->preview->pix);


    ud->preview->scaled_pix = do_preview_scaling(ud, ud->preview->pix);


    GtkWidget *widget = GHB_WIDGET(ud->builder, "preview_image");
    gtk_widget_queue_draw(widget);
}
