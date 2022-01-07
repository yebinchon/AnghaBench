
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float gdouble ;
typedef scalar_t__ gboolean ;
typedef int GtkWidget ;
typedef int GtkScaleButton ;
typedef int GtkAdjustment ;


 int * GTK_SCALE_BUTTON (int *) ;
 int gtk_adjustment_configure (int *,float,float,float,float,float,int ) ;
 int * gtk_scale_button_get_adjustment (int *) ;
 float hb_audio_quality_get_default (int) ;
 int hb_audio_quality_get_limits (int,float*,float*,float*,int*) ;

__attribute__((used)) static void audio_quality_update_limits(
    GtkWidget *widget,
    int encoder,
    gboolean set_default,
    gdouble value)
{
    float low, high, gran;
    int dir;

    hb_audio_quality_get_limits(encoder, &low, &high, &gran, &dir);
    if (set_default)
    {
        value = hb_audio_quality_get_default(encoder);
    }
    if (dir)
    {

        value = high - value + low;
    }
    GtkScaleButton *sb;
    GtkAdjustment *adj;
    sb = GTK_SCALE_BUTTON(widget);
    adj = gtk_scale_button_get_adjustment(sb);
    gtk_adjustment_configure (adj, value, low, high, gran, gran, 0);
}
