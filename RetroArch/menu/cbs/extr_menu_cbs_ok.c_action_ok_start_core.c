
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * environ_get; int * args; int * argv; scalar_t__ argc; } ;
typedef TYPE_1__ content_ctx_info_t ;


 int RARCH_PATH_BASENAME ;
 int path_clear (int ) ;
 int task_push_start_current_core (TYPE_1__*) ;

__attribute__((used)) static int action_ok_start_core(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   content_ctx_info_t content_info;

   content_info.argc = 0;
   content_info.argv = ((void*)0);
   content_info.args = ((void*)0);
   content_info.environ_get = ((void*)0);

   path_clear(RARCH_PATH_BASENAME);
   if (!task_push_start_current_core(&content_info))
      return -1;

   return 0;
}
