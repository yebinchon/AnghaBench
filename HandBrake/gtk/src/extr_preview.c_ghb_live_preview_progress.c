
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int builder; TYPE_1__* preview; } ;
typedef TYPE_2__ signal_user_data_t ;
typedef int gint64 ;
typedef int gdouble ;
struct TYPE_5__ {scalar_t__ state; int len; int pos; int play; int progress_lock; scalar_t__ seek_lock; int live_enabled; } ;
typedef int GtkRange ;
typedef scalar_t__ GstFormat ;
typedef int GSourceFunc ;


 int GHB_WIDGET (int ,char*) ;
 scalar_t__ GST_FORMAT_TIME ;
 int GST_MSECOND ;
 int * GTK_RANGE (int ) ;
 scalar_t__ PREVIEW_STATE_LIVE ;
 int TRUE ;
 int g_idle_add (int ,TYPE_2__*) ;
 scalar_t__ gst_element_query_duration (int ,scalar_t__,int*) ;
 scalar_t__ gst_element_query_position (int ,scalar_t__,int*) ;
 int gtk_range_set_value (int *,int) ;
 scalar_t__ unlock_progress_cb ;

void
ghb_live_preview_progress(signal_user_data_t *ud)
{
}
