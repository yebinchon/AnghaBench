
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {TYPE_3__* horizontal_list; } ;
typedef TYPE_4__ xmb_handle_t ;
struct TYPE_15__ {scalar_t__ menu_content_show_playlists; } ;
struct TYPE_14__ {char* directory_playlist; } ;
struct TYPE_18__ {TYPE_2__ bools; TYPE_1__ paths; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_19__ {void* path; int enum_idx; int type_default; void* exts; void* label; TYPE_3__* list; } ;
typedef TYPE_6__ menu_displaylist_info_t ;
struct TYPE_16__ {size_t size; } ;


 int DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL ;
 int FILE_TYPE_PLAIN ;
 int MENU_ENUM_LABEL_PLAYLISTS_TAB ;
 TYPE_5__* config_get_ptr () ;
 scalar_t__ menu_displaylist_ctl (int ,TYPE_6__*) ;
 int menu_displaylist_info_free (TYPE_6__*) ;
 int menu_displaylist_info_init (TYPE_6__*) ;
 int menu_displaylist_process (TYPE_6__*) ;
 char* msg_hash_to_str (int ) ;
 void* strdup (char*) ;
 int string_is_empty (void*) ;
 int xmb_node_allocate_userdata (TYPE_4__*,unsigned int) ;

__attribute__((used)) static void xmb_init_horizontal_list(xmb_handle_t *xmb)
{
   menu_displaylist_info_t info;
   settings_t *settings = config_get_ptr();

   menu_displaylist_info_init(&info);

   info.list = xmb->horizontal_list;
   info.path = strdup(
         settings->paths.directory_playlist);
   info.label = strdup(
         msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB));
   info.exts = strdup("lpl");
   info.type_default = FILE_TYPE_PLAIN;
   info.enum_idx = MENU_ENUM_LABEL_PLAYLISTS_TAB;

   if (settings->bools.menu_content_show_playlists && !string_is_empty(info.path))
   {
      if (menu_displaylist_ctl(DISPLAYLIST_DATABASE_PLAYLISTS_HORIZONTAL, &info))
      {
         size_t i;
         for (i = 0; i < xmb->horizontal_list->size; i++)
            xmb_node_allocate_userdata(xmb, (unsigned)i);
         menu_displaylist_process(&info);
      }
   }

   menu_displaylist_info_free(&info);
}
