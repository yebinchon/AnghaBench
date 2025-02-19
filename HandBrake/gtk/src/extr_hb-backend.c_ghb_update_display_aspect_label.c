
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int settings; } ;
typedef TYPE_1__ signal_user_data_t ;
typedef double gint ;
typedef int gchar ;


 int g_free (int *) ;
 double ghb_dict_get_int (int ,char*) ;
 int * ghb_get_display_aspect_string (double,double) ;
 int ghb_string_value (int *) ;
 int ghb_ui_update (TYPE_1__*,char*,int ) ;

void
ghb_update_display_aspect_label(signal_user_data_t *ud)
{
    gint width, disp_height;
    gint par_num, par_den;
    double disp_width;
    gchar *str;

    width = ghb_dict_get_int(ud->settings, "scale_width");
    disp_height = ghb_dict_get_int(ud->settings, "scale_height");
    par_num = ghb_dict_get_int(ud->settings, "PicturePARWidth");
    par_den = ghb_dict_get_int(ud->settings, "PicturePARHeight");
    disp_width = (double)width * par_num / par_den;
    str = ghb_get_display_aspect_string(disp_width, disp_height);
    ghb_ui_update(ud, "display_aspect", ghb_string_value(str));
    g_free(str);
}
