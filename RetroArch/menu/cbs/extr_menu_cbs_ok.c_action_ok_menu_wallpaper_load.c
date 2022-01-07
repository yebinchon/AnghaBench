
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int menu_xmb_shader_pipeline; } ;
struct TYPE_5__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;


 int ACTION_OK_LOAD_WALLPAPER ;
 int MSG_UNKNOWN ;
 int XMB_SHADER_PIPELINE_WALLPAPER ;
 TYPE_2__* config_get_ptr () ;
 int filebrowser_clear_type () ;
 int generic_action_ok (char const*,char const*,unsigned int,size_t,size_t,int ,int ) ;

__attribute__((used)) static int action_ok_menu_wallpaper_load(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   settings_t *settings = config_get_ptr();

   filebrowser_clear_type();

   settings->uints.menu_xmb_shader_pipeline = XMB_SHADER_PIPELINE_WALLPAPER;
   return generic_action_ok(path, label, type, idx, entry_idx,
         ACTION_OK_LOAD_WALLPAPER, MSG_UNKNOWN);
}
