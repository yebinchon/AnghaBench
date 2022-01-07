
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* horizontal_list; } ;
typedef TYPE_3__ stripes_handle_t ;
struct TYPE_13__ {char* directory_playlist; } ;
struct TYPE_16__ {TYPE_1__ paths; } ;
typedef TYPE_4__ settings_t ;
struct TYPE_17__ {void* path; int type_default; void* exts; int enum_idx; void* label; TYPE_2__* list; } ;
typedef TYPE_5__ menu_displaylist_info_t ;
struct TYPE_14__ {size_t size; } ;


 int DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL ;
 int FILE_TYPE_PLAIN ;
 int MENU_ENUM_LABEL_CONTENT_COLLECTION_LIST ;
 TYPE_4__* config_get_ptr () ;
 scalar_t__ menu_displaylist_ctl (int ,TYPE_5__*) ;
 int menu_displaylist_info_free (TYPE_5__*) ;
 int menu_displaylist_info_init (TYPE_5__*) ;
 int menu_displaylist_process (TYPE_5__*) ;
 char* msg_hash_to_str (int ) ;
 void* strdup (char*) ;
 int string_is_empty (void*) ;
 int stripes_node_allocate_userdata (TYPE_3__*,unsigned int) ;

__attribute__((used)) static void stripes_init_horizontal_list(stripes_handle_t *stripes)
{
   menu_displaylist_info_t info;
   settings_t *settings = config_get_ptr();

   menu_displaylist_info_init(&info);

   info.list = stripes->horizontal_list;
   info.path = strdup(
         settings->paths.directory_playlist);






   info.exts = strdup("lpl");
   info.type_default = FILE_TYPE_PLAIN;

   if (!string_is_empty(info.path))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL, &info))
      {
         size_t i;
         for (i = 0; i < stripes->horizontal_list->size; i++)
            stripes_node_allocate_userdata(stripes, (unsigned)i);
         menu_displaylist_process(&info);
      }
   }

   menu_displaylist_info_free(&info);
}
