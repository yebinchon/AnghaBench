
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
struct string_list {int dummy; } ;
struct TYPE_6__ {int show_hidden_files; } ;
struct TYPE_7__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
typedef int ext_shaders ;
typedef int ext_name ;
typedef enum dir_list_type { ____Placeholder_dir_list_type } dir_list_type ;
struct TYPE_8__ {char* all_ext; } ;
typedef TYPE_3__ core_info_list_t ;
 int RARCH_SHADER_CG ;
 int RARCH_SHADER_GLSL ;
 int RARCH_SHADER_SLANG ;
 TYPE_2__* configuration_settings ;
 int core_info_get_list (TYPE_3__**) ;
 struct string_list* dir_list_new (char const*,char const*,int,int ,int,int) ;
 int frontend_driver_get_core_extension (char*,int) ;
 int string_list_append (struct string_list*,char*,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 int string_list_join_concat (char*,int,struct string_list*,char*) ;
 struct string_list* string_list_new () ;
 int video_shader_is_supported (int ) ;

struct string_list *dir_list_new_special(const char *input_dir,
      enum dir_list_type type, const char *filter)
{



   char ext_name[255];
   const char *exts = ((void*)0);
   bool recursive = 0;
   settings_t *settings = configuration_settings;

   switch (type)
   {
      case 136:
         exts = filter;
         break;
      case 134:
         {
            ext_name[0] = '\0';

            if (!frontend_driver_get_core_extension(ext_name, sizeof(ext_name)))
               return ((void*)0);

            exts = ext_name;
         }
         break;
      case 129:
         recursive = 1;

      case 133:
         {
            core_info_list_t *list = ((void*)0);
            core_info_get_list(&list);

            if (list)
               exts = list->all_ext;
         }
         break;
      case 128:
         break;
      case 135:
         exts = "lpl";
         break;
      case 132:
         exts = "rdb";
         break;
      case 130:
         exts = filter;
         break;
      case 131:
      default:
         return ((void*)0);
   }

   return dir_list_new(input_dir, exts, 0,
         settings->bools.show_hidden_files,
         type == 133, recursive);
}
