
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMD_EVENT_UNLOAD_CORE ;
 int RARCH_PATH_CORE ;
 scalar_t__ filestream_delete (char*) ;
 int free (char*) ;
 int generic_action_ok_command (int ) ;
 int menu_entries_flush_stack (int ,int ) ;
 char* path_get (int ) ;
 char* strdup (char const*) ;
 int string_is_empty (char const*) ;

__attribute__((used)) static int action_ok_core_delete(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   const char *path_core = path_get(RARCH_PATH_CORE);
   char *core_path = !string_is_empty(path_core)
      ? strdup(path_core) : ((void*)0);

   if (!core_path)
      return 0;

   generic_action_ok_command(CMD_EVENT_UNLOAD_CORE);
   menu_entries_flush_stack(0, 0);

   if (filestream_delete(core_path) != 0) { }

   free(core_path);

   return 0;
}
