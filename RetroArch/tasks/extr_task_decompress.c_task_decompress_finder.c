
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ handler; scalar_t__ state; } ;
typedef TYPE_1__ retro_task_t ;
struct TYPE_5__ {int source_file; } ;
typedef TYPE_2__ decompress_state_t ;


 int string_is_equal (int ,char const*) ;
 scalar_t__ task_decompress_handler ;

__attribute__((used)) static bool task_decompress_finder(
      retro_task_t *task, void *user_data)
{
   decompress_state_t *dec = (decompress_state_t*)task->state;

   if (task->handler != task_decompress_handler)
      return 0;

   return string_is_equal(dec->source_file, (const char*)user_data);
}
