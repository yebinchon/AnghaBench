
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum rarch_core_type { ____Placeholder_rarch_core_type } rarch_core_type ;
struct TYPE_3__ {int * environ_get; int * args; int * argv; scalar_t__ argc; } ;
typedef TYPE_1__ content_ctx_info_t ;


 int content_add_to_playlist (char const*) ;
 int task_push_load_content_with_core_from_menu (char const*,TYPE_1__*,int,int *,int *) ;

__attribute__((used)) static int default_action_ok_load_content_with_core_from_menu(const char *_path, unsigned _type)
{
   content_ctx_info_t content_info;
   content_info.argc = 0;
   content_info.argv = ((void*)0);
   content_info.args = ((void*)0);
   content_info.environ_get = ((void*)0);
   if (!task_push_load_content_with_core_from_menu(
            _path, &content_info,
            (enum rarch_core_type)_type, ((void*)0), ((void*)0)))
      return -1;
   content_add_to_playlist(_path);
   return 0;
}
