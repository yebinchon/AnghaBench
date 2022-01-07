
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * environ_get; int * args; int * argv; scalar_t__ argc; } ;
typedef TYPE_1__ content_ctx_info_t ;


 int task_push_load_content_from_playlist_from_menu (char const*,char const*,char const*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static int default_action_ok_load_content_from_playlist_from_menu(const char *_path,
      const char *path, const char *entry_label)
{
   content_ctx_info_t content_info;
   content_info.argc = 0;
   content_info.argv = ((void*)0);
   content_info.args = ((void*)0);
   content_info.environ_get = ((void*)0);
   if (!task_push_load_content_from_playlist_from_menu(
            _path, path, entry_label,
            &content_info,
            ((void*)0), ((void*)0)))
      return -1;
   return 0;
}
