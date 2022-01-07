
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rarch_dir_list {int ptr; TYPE_2__* list; } ;
struct TYPE_4__ {int size; TYPE_1__* elems; } ;
struct TYPE_3__ {int data; } ;


 int command_set_shader (int ) ;
 int dir_shader_list ;

__attribute__((used)) static void dir_check_shader(bool pressed_next, bool pressed_prev)
{
   struct rarch_dir_list *dir_list = (struct rarch_dir_list*)&dir_shader_list;
   static bool change_triggered = 0;

   if (!dir_list || !dir_list->list)
      return;

   if (pressed_next)
   {
      if (change_triggered)
         dir_list->ptr = (dir_list->ptr + 1) %
            dir_list->list->size;
   }
   else if (pressed_prev)
   {
      if (dir_list->ptr == 0)
         dir_list->ptr = dir_list->list->size - 1;
      else
         dir_list->ptr--;
   }
   else
      return;
   change_triggered = 1;

   command_set_shader(dir_list->list->elems[dir_list->ptr].data);
}
