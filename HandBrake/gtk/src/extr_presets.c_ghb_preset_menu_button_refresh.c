
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int signal_user_data_t ;
typedef int hb_preset_index_t ;


 int * hb_preset_search_index (char const*,int ,int) ;
 int set_preset_menu_button_label (int *,int *) ;

void
ghb_preset_menu_button_refresh(signal_user_data_t *ud,
                               const char *fullname, int type)
{
    hb_preset_index_t * path;

    path = hb_preset_search_index(fullname, 0, type);
    set_preset_menu_button_label(ud, path);
}
