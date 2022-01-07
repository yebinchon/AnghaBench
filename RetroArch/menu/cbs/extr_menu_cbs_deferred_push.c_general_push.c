
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
typedef int tmp_str2 ;
typedef int tmp_str ;
struct string_list {unsigned int size; TYPE_1__* elems; } ;
struct retro_system_info {char* valid_extensions; int member_0; } ;
struct TYPE_13__ {scalar_t__ multimedia_builtin_imageviewer_enable; scalar_t__ multimedia_builtin_mediaplayer_enable; int filter_by_current_core; } ;
struct TYPE_14__ {TYPE_2__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_15__ {int scratch_buf; int scratch2_buf; } ;
typedef TYPE_4__ menu_handle_t ;
struct TYPE_16__ {char* path; char* label; char* exts; int setting; int enum_idx; int type_default; } ;
typedef TYPE_5__ menu_displaylist_info_t ;
typedef enum menu_displaylist_ctl_state { ____Placeholder_menu_displaylist_ctl_state } menu_displaylist_ctl_state ;
struct TYPE_17__ {char* all_ext; } ;
typedef TYPE_6__ core_info_list_t ;
struct TYPE_12__ {char* data; } ;


 int FILE_TYPE_PLAIN ;
 int PATH_MAX_LENGTH ;




 int ST_DIR ;
 TYPE_3__* config_get_ptr () ;
 int core_info_get_list (TYPE_6__**) ;
 int deferred_push_dlist (TYPE_5__*,int) ;
 int fill_pathname_join (char*,int ,int ,int) ;
 int free (char*) ;
 int libretro_ffmpeg_retro_get_system_info (struct retro_system_info*) ;
 int libretro_imageviewer_retro_get_system_info (struct retro_system_info*) ;
 int libretro_mpv_retro_get_system_info (struct retro_system_info*) ;
 scalar_t__ malloc (int) ;
 int menu_cbs_exit () ;
 TYPE_4__* menu_driver_get_ptr () ;
 int menu_setting_find_enum (int ) ;
 int menu_setting_get_browser_selection_type (int ) ;
 struct retro_system_info* runloop_get_libretro_system_info () ;
 void* strdup (char*) ;
 int string_is_empty (char*) ;
 int string_list_append (struct string_list*,char const*,union string_list_elem_attr) ;
 int string_list_find_elem (struct string_list*,char*) ;
 int string_list_free (struct string_list*) ;
 int string_list_join_concat (char*,size_t,struct string_list*,char*) ;
 struct string_list* string_list_new () ;
 struct string_list* string_split (char*,char*) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int general_push(menu_displaylist_info_t *info,
      unsigned id, enum menu_displaylist_ctl_state state)
{
   char *newstring2 = ((void*)0);
   core_info_list_t *list = ((void*)0);
   settings_t *settings = config_get_ptr();
   menu_handle_t *menu = menu_driver_get_ptr();

   if (!menu)
      return menu_cbs_exit();

   core_info_get_list(&list);

   switch (id)
   {
      case 129:
      case 128:
         break;
      default:
         {
            char tmp_str[PATH_MAX_LENGTH];
            char tmp_str2[PATH_MAX_LENGTH];

            tmp_str[0] = '\0';
            tmp_str2[0] = '\0';

            fill_pathname_join(tmp_str, menu->scratch2_buf,
                  menu->scratch_buf, sizeof(tmp_str));
            fill_pathname_join(tmp_str2, menu->scratch2_buf,
                  menu->scratch_buf, sizeof(tmp_str2));

            if (!string_is_empty(info->path))
               free(info->path);
            if (!string_is_empty(info->label))
               free(info->label);

            info->path = strdup(tmp_str);
            info->label = strdup(tmp_str2);
         }
         break;
   }

   info->type_default = FILE_TYPE_PLAIN;

   switch (id)
   {
      case 130:
      case 131:
      case 129:
         info->setting = menu_setting_find_enum(info->enum_idx);
         break;
      default:
         break;
   }

   newstring2 = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));

   newstring2[0] = '\0';

   switch (id)
   {
      case 131:
         {
            struct retro_system_info *system =
               runloop_get_libretro_system_info();
            if (system)
            {
               if (!string_is_empty(system->valid_extensions))
                  strlcpy(newstring2, system->valid_extensions,
                        PATH_MAX_LENGTH * sizeof(char));
            }
         }
         break;
      case 129:
         {
            bool new_exts_allocated = 0;
            char *new_exts = ((void*)0);

            if (menu_setting_get_browser_selection_type(info->setting) == ST_DIR)
            {
            }
            else
            {
               struct retro_system_info *system =
                  runloop_get_libretro_system_info();
               if (system && !string_is_empty(system->valid_extensions))
               {
                  new_exts = strdup(system->valid_extensions);
                  new_exts_allocated = 1;
               }
            }

            if (!new_exts)
               new_exts = info->exts;

            if (!string_is_empty(new_exts))
            {
               size_t path_size = PATH_MAX_LENGTH * sizeof(char);
               struct string_list *str_list3 = string_split(new_exts, "|");
               string_list_join_concat(newstring2, path_size,
                     str_list3, "|");
               string_list_free(str_list3);

            }

            if (new_exts_allocated)
            {
               free(new_exts);

               if (new_exts == info->exts)
                  info->exts = ((void*)0);
            }
         }
         break;
      case 130:
      case 128:
         {
            union string_list_elem_attr attr;
            size_t path_size = PATH_MAX_LENGTH * sizeof(char);
            char *newstring = (char*)malloc(PATH_MAX_LENGTH * sizeof(char));
            struct string_list *str_list2 = string_list_new();
            struct retro_system_info *system = runloop_get_libretro_system_info();

            newstring[0] = '\0';
            attr.i = 0;

            if (system)
            {
               if (!string_is_empty(system->valid_extensions))
               {
                  unsigned x;
                  struct string_list *str_list = string_split(system->valid_extensions, "|");

                  for (x = 0; x < str_list->size; x++)
                  {
                     const char *elem = str_list->elems[x].data;
                     string_list_append(str_list2, elem, attr);
                  }

                  string_list_free(str_list);
               }
            }

            if (!settings->bools.filter_by_current_core)
            {
               if (list && !string_is_empty(list->all_ext))
               {
                  unsigned x;
                  struct string_list *str_list = string_split(list->all_ext, "|");

                  for (x = 0; x < str_list->size; x++)
                  {
                     if (!string_list_find_elem(str_list2, str_list->elems[x].data))
                     {
                        const char *elem = str_list->elems[x].data;
                        string_list_append(str_list2, elem, attr);
                     }
                  }

                  string_list_free(str_list);
               }
            }

            string_list_join_concat(newstring, path_size,
                  str_list2, "|");

            {
               struct string_list *str_list3 = string_split(newstring, "|");
               string_list_join_concat(newstring2, path_size,
                     str_list3, "|");
               string_list_free(str_list3);
            }
            free(newstring);
            string_list_free(str_list2);
         }
         break;
   }

   if (settings->bools.multimedia_builtin_mediaplayer_enable ||
         settings->bools.multimedia_builtin_imageviewer_enable)
   {
      struct retro_system_info sysinfo = {0};

      (void)sysinfo;
   }

   if (!string_is_empty(newstring2))
   {
      if (!string_is_empty(info->exts))
         free(info->exts);
      info->exts = strdup(newstring2);
   }
   free(newstring2);

   return deferred_push_dlist(info, state);
}
