
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* task_save_files ;

void *savefile_ptr_get(void)
{
   return task_save_files;
}
