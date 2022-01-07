
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef scalar_t__ gpointer ;
typedef int GtkWidget ;


 int FALSE ;
 int audio_def_set_limits (int *,int *,int ) ;

void audio_def_set_all_limits_cb(GtkWidget *widget, gpointer data)
{
    signal_user_data_t *ud = (signal_user_data_t*)data;
    audio_def_set_limits(ud, widget, FALSE);
}
