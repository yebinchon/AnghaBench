
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int builder; TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_7__ {int pix; int scaled_pix; } ;
typedef int GtkWidget ;


 int * GHB_WIDGET (int ,char*) ;
 int do_preview_scaling (TYPE_2__*,int ) ;
 int gtk_widget_queue_draw (int *) ;
 int init_preview_image (TYPE_2__*) ;
 int set_mini_preview_image (TYPE_2__*,int ) ;

void
ghb_set_preview_image(signal_user_data_t *ud)
{
    init_preview_image(ud);


    set_mini_preview_image(ud, ud->preview->pix);


    ud->preview->scaled_pix = do_preview_scaling(ud, ud->preview->pix);


    GtkWidget *widget = GHB_WIDGET(ud->builder, "preview_image");
    gtk_widget_queue_draw(widget);
}
