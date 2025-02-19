
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ state; } ;
typedef TYPE_2__ retro_task_t ;
struct TYPE_9__ {int progress; int url; } ;
typedef TYPE_3__ http_transfer_info_t ;
struct TYPE_7__ {int url; } ;
struct TYPE_10__ {TYPE_1__ connection; } ;
typedef TYPE_4__ http_handle_t ;


 int strlcpy (int ,int ,int) ;
 int task_get_progress (TYPE_2__*) ;

__attribute__((used)) static bool task_http_retriever(retro_task_t *task, void *data)
{
   http_transfer_info_t *info = (http_transfer_info_t*)data;


   http_handle_t *http = (http_handle_t *)task->state;
   if (!http)
      return 0;


   strlcpy(info->url, http->connection.url, sizeof(info->url));
   info->progress = task_get_progress(task);
   return 1;
}
