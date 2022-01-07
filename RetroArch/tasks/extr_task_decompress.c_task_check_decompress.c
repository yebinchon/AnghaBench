
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* userdata; int func; } ;
typedef TYPE_1__ task_finder_data_t ;


 int task_decompress_finder ;
 int task_queue_find (TYPE_1__*) ;

bool task_check_decompress(const char *source_file)
{
   task_finder_data_t find_data;


   find_data.func = task_decompress_finder;
   find_data.userdata = (void *)source_file;


   return task_queue_find(&find_data);
}
