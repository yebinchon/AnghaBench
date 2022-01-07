
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int builder; TYPE_4__* preview; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef int preview_t ;
typedef int gint64 ;
struct TYPE_6__ {int encode_frame; int live_id; char* vsink; int live_enabled; int * play; int button_height; int button_width; int pause; } ;
typedef int GtkWidget ;
typedef int GstBus ;


 int FALSE ;
 int * GHB_WIDGET (int ,char*) ;
 int GST_PIPELINE (int *) ;
 int TRUE ;
 TYPE_4__* g_malloc0 (int) ;
 int g_message (char*) ;
 int g_object_set (char*,char*,char*,char*,...) ;
 int gst_bus_add_watch (int *,int ,TYPE_1__*) ;
 void* gst_element_factory_make (char*,char*) ;
 int gst_object_unref (int *) ;
 int * gst_pipeline_get_bus (int ) ;
 int gtk_widget_get_size_request (int *,int *,int *) ;
 int gtk_widget_hide (int *) ;
 int live_preview_cb ;

void
ghb_preview_init(signal_user_data_t *ud)
{
    GtkWidget *widget;

    ud->preview = g_malloc0(sizeof(preview_t));
    ud->preview->pause = TRUE;
    ud->preview->encode_frame = -1;
    ud->preview->live_id = -1;

    widget = GHB_WIDGET(ud->builder, "preview_button_image");
    gtk_widget_get_size_request(widget, &ud->preview->button_width,
                                        &ud->preview->button_height);
    widget = GHB_WIDGET(ud->builder, "live_preview_box");
    gtk_widget_hide (widget);
    widget = GHB_WIDGET(ud->builder, "live_preview_duration_box");
    gtk_widget_hide (widget);

}
