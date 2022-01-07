
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int builder; TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
struct TYPE_4__ {int state; int pause; int play; int live_enabled; } ;
typedef int GtkRange ;
typedef int GtkImage ;


 int GHB_ICON_SIZE_BUTTON ;
 int GHB_PLAY_ICON ;
 int GHB_WIDGET (int ,char*) ;
 int GST_STATE_NULL ;
 int * GTK_IMAGE (int ) ;
 int * GTK_RANGE (int ) ;
 int PREVIEW_STATE_IMAGE ;
 int TRUE ;
 int ghb_image_set_from_icon_name (int *,int ,int ) ;
 int gst_element_set_state (int ,int ) ;
 int gtk_range_set_value (int *,int ) ;

void
live_preview_stop(signal_user_data_t *ud)
{
    GtkImage *img;
    GtkRange *progress;

    if (!ud->preview->live_enabled)
        return;

    img = GTK_IMAGE(GHB_WIDGET(ud->builder, "live_preview_play_image"));
    ghb_image_set_from_icon_name(img, GHB_PLAY_ICON, GHB_ICON_SIZE_BUTTON);



    ud->preview->pause = TRUE;
    ud->preview->state = PREVIEW_STATE_IMAGE;

    progress = GTK_RANGE(GHB_WIDGET(ud->builder, "live_preview_progress"));
    gtk_range_set_value(progress, 0);
}
