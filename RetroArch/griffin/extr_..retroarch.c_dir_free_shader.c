
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rarch_dir_list {scalar_t__ ptr; int * list; } ;


 int dir_list_free (int *) ;
 int dir_shader_list ;

__attribute__((used)) static bool dir_free_shader(void)
{
   struct rarch_dir_list *dir_list =
      (struct rarch_dir_list*)&dir_shader_list;

   dir_list_free(dir_list->list);
   dir_list->list = ((void*)0);
   dir_list->ptr = 0;

   return 1;
}
