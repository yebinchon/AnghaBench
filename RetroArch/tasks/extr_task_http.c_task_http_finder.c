
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ handler; scalar_t__ state; } ;
typedef TYPE_2__ retro_task_t ;
struct TYPE_5__ {int url; } ;
struct TYPE_7__ {TYPE_1__ connection; } ;
typedef TYPE_3__ http_handle_t ;


 int string_is_equal (int ,char const*) ;
 scalar_t__ task_http_transfer_handler ;

__attribute__((used)) static bool task_http_finder(retro_task_t *task, void *user_data)
{
   http_handle_t *http = ((void*)0);

   if (!task || (task->handler != task_http_transfer_handler))
      return 0;

   if (!user_data)
      return 0;

   http = (http_handle_t*)task->state;
   if (!http)
      return 0;

   return string_is_equal(http->connection.url, (const char*)user_data);
}
