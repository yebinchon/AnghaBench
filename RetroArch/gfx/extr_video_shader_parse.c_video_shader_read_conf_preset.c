
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
struct video_shader {int feedback_pass; unsigned int passes; TYPE_8__* pass; int path; } ;
struct string_list {int dummy; } ;
struct TYPE_12__ {int video_shader_watch_files; } ;
struct TYPE_14__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_15__ {int path; } ;
typedef TYPE_4__ config_file_t ;
struct TYPE_13__ {int path; } ;
struct TYPE_16__ {TYPE_2__ source; } ;


 int GFX_MAX_SHADERS ;
 unsigned int MIN (unsigned int,int ) ;
 int PATH_CHANGE_TYPE_FILE_DELETED ;
 int PATH_CHANGE_TYPE_FILE_MOVED ;
 int PATH_CHANGE_TYPE_MODIFIED ;
 int PATH_CHANGE_TYPE_WRITE_FILE_CLOSED ;
 int RARCH_ERR (char*) ;
 int config_get_int (TYPE_4__*,char*,int*) ;
 TYPE_3__* config_get_ptr () ;
 int config_get_uint (TYPE_4__*,char*,unsigned int*) ;
 int * file_change_data ;
 int frontend_driver_watch_path_for_changes (struct string_list*,int,int **) ;
 int memset (struct video_shader*,int ,int) ;
 int string_list_append (struct string_list*,int ,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_list_new () ;
 int strlcpy (int ,int ,int) ;
 int video_shader_parse_pass (TYPE_4__*,TYPE_8__*,unsigned int) ;
 int video_shader_parse_textures (TYPE_4__*,struct video_shader*) ;

bool video_shader_read_conf_preset(config_file_t *conf,
      struct video_shader *shader)
{
   unsigned i;
   union string_list_elem_attr attr;
   unsigned shaders = 0;
   settings_t *settings = config_get_ptr();
   struct string_list *file_list = ((void*)0);
   bool watch_files = settings->bools.video_shader_watch_files;

   memset(shader, 0, sizeof(*shader));

   if (!config_get_uint(conf, "shaders", &shaders))
   {
      RARCH_ERR("Cannot find \"shaders\" param.\n");
      return 0;
   }

   if (!shaders)
   {
      RARCH_ERR("Need to define at least 1 shader.\n");
      return 0;
   }

   if (!config_get_int(conf, "feedback_pass",
            &shader->feedback_pass))
      shader->feedback_pass = -1;

   shader->passes = MIN(shaders, GFX_MAX_SHADERS);
   attr.i = 0;

   strlcpy(shader->path, conf->path, sizeof(shader->path));

   if (watch_files)
   {
      if (file_change_data)
         frontend_driver_watch_path_for_changes(((void*)0),
               0, &file_change_data);

      file_change_data = ((void*)0);
      file_list = string_list_new();
      string_list_append(file_list, conf->path, attr);
   }

   for (i = 0; i < shader->passes; i++)
   {
      if (!video_shader_parse_pass(conf, &shader->pass[i], i))
      {
         if (file_list)
         {
            string_list_free(file_list);
            file_list = ((void*)0);
         }
         return 0;
      }

      if (watch_files && file_list)
         string_list_append(file_list,
               shader->pass[i].source.path, attr);
   }

   if (watch_files)
   {
      int flags = PATH_CHANGE_TYPE_MODIFIED |
                  PATH_CHANGE_TYPE_WRITE_FILE_CLOSED |
                  PATH_CHANGE_TYPE_FILE_MOVED |
                  PATH_CHANGE_TYPE_FILE_DELETED;

      frontend_driver_watch_path_for_changes(file_list,
            flags, &file_change_data);
      if (file_list)
         string_list_free(file_list);
   }

   if (!video_shader_parse_textures(conf, shader))
      return 0;

   return 1;
}
