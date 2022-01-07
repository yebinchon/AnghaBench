
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union string_list_elem_attr {int i; } ;
struct string_list {int dummy; } ;
typedef int str ;
struct TYPE_4__ {char* savestate; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef TYPE_2__ global_t ;


 int MSG_REDIRECTING_SAVESTATE_TO ;
 int PATH_MAX_LENGTH ;
 int RARCH_DIR_CURRENT_SAVESTATE ;
 int RARCH_LOG (char*,int ,char*) ;
 char* dir_get (int ) ;
 int fill_pathname_dir (char*,char*,char*,int) ;
 TYPE_2__ g_extern ;
 int msg_hash_to_str (int ) ;
 char* path_basename (char*) ;
 scalar_t__ path_is_directory (char*) ;
 int path_remove_extension (char*) ;
 int path_set_basename (char*) ;
 int retro_assert (struct string_list*) ;
 int string_list_append (struct string_list*,char*,union string_list_elem_attr) ;
 int string_list_free (struct string_list*) ;
 int string_list_join_concat (char*,int,struct string_list*,char*) ;
 struct string_list* string_list_new () ;
 int strlcpy (char*,char*,int) ;
 struct string_list* subsystem_fullpaths ;

void path_set_special(char **argv, unsigned num_content)
{
   unsigned i;
   char str[PATH_MAX_LENGTH];
   union string_list_elem_attr attr;
   struct string_list *subsystem_paths = ((void*)0);
   global_t *global = &g_extern;


   path_set_basename(argv[0]);

   subsystem_fullpaths = string_list_new();
   subsystem_paths = string_list_new();
   retro_assert(subsystem_fullpaths);

   attr.i = 0;

   for (i = 0; i < num_content; i++)
   {
      string_list_append(subsystem_fullpaths, argv[i], attr);
      strlcpy(str, argv[i], sizeof(str));
      path_remove_extension(str);
      string_list_append(subsystem_paths, path_basename(str), attr);
   }
   str[0] = '\0';
   string_list_join_concat(str, sizeof(str), subsystem_paths, " + ");



   if (global)
   {
      if (path_is_directory(dir_get(RARCH_DIR_CURRENT_SAVESTATE)))
         strlcpy(global->name.savestate, dir_get(RARCH_DIR_CURRENT_SAVESTATE),
               sizeof(global->name.savestate));
      if (path_is_directory(global->name.savestate))
      {
         fill_pathname_dir(global->name.savestate,
               str,
               ".state",
               sizeof(global->name.savestate));
         RARCH_LOG("%s \"%s\".\n",
               msg_hash_to_str(MSG_REDIRECTING_SAVESTATE_TO),
               global->name.savestate);
      }
   }

   if (subsystem_paths)
      string_list_free(subsystem_paths);
}
