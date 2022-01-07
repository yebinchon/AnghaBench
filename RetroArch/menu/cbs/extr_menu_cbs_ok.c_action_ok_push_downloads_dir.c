
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int directory_core_assets; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef TYPE_2__ settings_t ;


 int ACTION_OK_DL_CONTENT_LIST ;
 int FILEBROWSER_SELECT_FILE ;
 int MENU_ENUM_LABEL_FAVORITES ;
 TYPE_2__* config_get_ptr () ;
 int filebrowser_set_type (int ) ;
 int generic_action_ok_displaylist_push (char const*,int ,int ,unsigned int,size_t,size_t,int ) ;
 int msg_hash_to_str (int ) ;

__attribute__((used)) static int action_ok_push_downloads_dir(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   settings_t *settings = config_get_ptr();

   filebrowser_set_type(FILEBROWSER_SELECT_FILE);
   return generic_action_ok_displaylist_push(path,
         settings->paths.directory_core_assets,
         msg_hash_to_str(MENU_ENUM_LABEL_FAVORITES),
         type, idx,
         entry_idx, ACTION_OK_DL_CONTENT_LIST);
}
