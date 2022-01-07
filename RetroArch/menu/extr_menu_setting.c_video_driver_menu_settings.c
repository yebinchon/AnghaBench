
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rarch_setting_t ;
typedef int rarch_setting_info_t ;
typedef int rarch_setting_group_info_t ;
struct TYPE_5__ {int flicker_filter_index; int gamma_correction; int pal60_enable; } ;
struct TYPE_6__ {TYPE_1__ screen; int softfilter_enable; } ;
struct TYPE_7__ {TYPE_2__ console; } ;
typedef TYPE_3__ global_t ;


 int CMD_EVENT_VIDEO_APPLY_STATE_CHANGES ;
 int CONFIG_BOOL (int **,int *,int *,int ,int ,int,int ,int ,int *,int *,char const*,int ,int ,int ) ;
 int CONFIG_UINT (int **,int *,int *,int ,int ,int ,int *,int *,char const*,int ,int ) ;
 int MAX_GAMMA_SETTING ;
 int MENU_ENUM_LABEL_PAL60_ENABLE ;
 int MENU_ENUM_LABEL_VALUE_OFF ;
 int MENU_ENUM_LABEL_VALUE_ON ;
 int MENU_ENUM_LABEL_VALUE_PAL60_ENABLE ;
 int MENU_ENUM_LABEL_VALUE_VIDEO_FILTER_FLICKER ;
 int MENU_ENUM_LABEL_VALUE_VIDEO_GAMMA ;
 int MENU_ENUM_LABEL_VALUE_VIDEO_SOFT_FILTER ;
 int MENU_ENUM_LABEL_VIDEO_FILTER_FLICKER ;
 int MENU_ENUM_LABEL_VIDEO_GAMMA ;
 int MENU_ENUM_LABEL_VIDEO_SOFT_FILTER ;
 int SD_FLAG_ADVANCED ;
 int SD_FLAG_CMD_APPLY_AUTO ;
 int SD_FLAG_NONE ;
 int SETTINGS_DATA_LIST_CURRENT_ADD_FLAGS (int **,int *,int) ;
 int general_read_handler ;
 int general_write_handler ;
 TYPE_3__* global_get_ptr () ;
 int menu_settings_list_current_add_cmd (int **,int *,int ) ;
 int menu_settings_list_current_add_range (int **,int *,int ,int,int,int,int) ;

void video_driver_menu_settings(void **list_data, void *list_info_data,
      void *group_data, void *subgroup_data, const char *parent_group)
{
}
