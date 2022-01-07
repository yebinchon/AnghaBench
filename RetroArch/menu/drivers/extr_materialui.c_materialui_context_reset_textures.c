
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * list; } ;
struct TYPE_5__ {TYPE_1__ textures; } ;
typedef TYPE_2__ materialui_handle_t ;
typedef int icon_path ;


 int APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_ICONS ;
 int MESSAGE_QUEUE_CATEGORY_INFO ;
 int MESSAGE_QUEUE_ICON_DEFAULT ;
 int MSG_MISSING_ASSETS ;
 unsigned int MUI_TEXTURE_LAST ;
 int PATH_MAX_LENGTH ;
 int RARCH_WARN (char*,char*,int ,int ) ;
 int TEXTURE_FILTER_MIPMAP_LINEAR ;
 int fill_pathname_application_special (char*,int,int ) ;
 int materialui_texture_path (unsigned int) ;
 int menu_display_reset_textures_list (int ,char*,int *,int ,int *,int *) ;
 int msg_hash_to_str (int ) ;
 int path_default_slash () ;
 int runloop_msg_queue_push (int ,int,int,int,int *,int ,int ) ;

__attribute__((used)) static void materialui_context_reset_textures(materialui_handle_t *mui)
{
   bool has_all_assets = 1;
   char icon_path[PATH_MAX_LENGTH];
   unsigned i;

   icon_path[0] = '\0';

   fill_pathname_application_special(
         icon_path, sizeof(icon_path),
         APPLICATION_SPECIAL_DIRECTORY_ASSETS_MATERIALUI_ICONS);


   for (i = 0; i < MUI_TEXTURE_LAST; i++)
   {
      if (!menu_display_reset_textures_list(
            materialui_texture_path(i), icon_path, &mui->textures.list[i],
            TEXTURE_FILTER_MIPMAP_LINEAR, ((void*)0), ((void*)0)))
      {
         RARCH_WARN("[GLUI] Asset missing: %s%s%s\n", icon_path, path_default_slash(), materialui_texture_path(i));
         has_all_assets = 0;
      }
   }


   if (!has_all_assets)
      runloop_msg_queue_push(
            msg_hash_to_str(MSG_MISSING_ASSETS), 1, 256, 0, ((void*)0),
            MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
}
