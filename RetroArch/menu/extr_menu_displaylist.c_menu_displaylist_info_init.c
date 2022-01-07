
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int need_sort; int need_refresh; int need_entries_refresh; int need_push_no_playlist_entries; int need_push; int need_clear; int push_builtin_cores; int download_core; int need_navigation_clear; int * setting; int * menu_list; int * list; int * exts; int * path_c; int * path_b; int * path; int * label; scalar_t__ directory_ptr; scalar_t__ flags; scalar_t__ type_default; scalar_t__ type; int enum_idx; } ;
typedef TYPE_1__ menu_displaylist_info_t ;


 int MSG_UNKNOWN ;

void menu_displaylist_info_init(menu_displaylist_info_t *info)
{
   if (!info)
      return;

   info->enum_idx = MSG_UNKNOWN;
   info->need_sort = 0;
   info->need_refresh = 0;
   info->need_entries_refresh = 0;
   info->need_push_no_playlist_entries = 0;
   info->need_push = 0;
   info->need_clear = 0;
   info->push_builtin_cores = 0;
   info->download_core = 0;
   info->need_navigation_clear = 0;
   info->type = 0;
   info->type_default = 0;
   info->flags = 0;
   info->directory_ptr = 0;
   info->label = ((void*)0);
   info->path = ((void*)0);
   info->path_b = ((void*)0);
   info->path_c = ((void*)0);
   info->exts = ((void*)0);
   info->list = ((void*)0);
   info->menu_list = ((void*)0);
   info->setting = ((void*)0);
}
