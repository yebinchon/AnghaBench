
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rarch_dir_list {TYPE_4__* list; scalar_t__ ptr; } ;
struct TYPE_7__ {int * directory_video_shader; } ;
struct TYPE_9__ {TYPE_1__ paths; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_10__ {unsigned int size; TYPE_2__* elems; } ;
struct TYPE_8__ {int data; } ;


 int DIR_LIST_SHADERS ;
 int MSG_FOUND_SHADER ;
 int RARCH_LOG (char*,int ,int ) ;
 TYPE_3__* configuration_settings ;
 int dir_free_shader () ;
 TYPE_4__* dir_list_new_special (int *,int ,int *) ;
 int dir_list_sort (TYPE_4__*,int) ;
 int dir_shader_list ;
 int msg_hash_to_str (int ) ;

__attribute__((used)) static bool dir_init_shader(void)
{
   unsigned i;
   struct rarch_dir_list *dir_list = (struct rarch_dir_list*)&dir_shader_list;
   settings_t *settings = configuration_settings;

   if (!settings || !*settings->paths.directory_video_shader)
      return 0;

   dir_list->list = dir_list_new_special(
         settings->paths.directory_video_shader, DIR_LIST_SHADERS, ((void*)0));

   if (!dir_list->list || dir_list->list->size == 0)
   {
      dir_free_shader();
      return 0;
   }

   dir_list->ptr = 0;
   dir_list_sort(dir_list->list, 0);

   for (i = 0; i < dir_list->list->size; i++)
      RARCH_LOG("%s \"%s\"\n",
            msg_hash_to_str(MSG_FOUND_SHADER),
            dir_list->list->elems[i].data);
   return 1;
}
