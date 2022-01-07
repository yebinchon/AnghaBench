
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int error_string ;
typedef int errorConf ;


 int CFG_LANGUAGE_EN ;
 int DEBUG_STR (char const*) ;
 int DEBUG_VAR (char const*) ;
 int ERROR_TEXT ;
 int PATH_MAX ;
 int RARCH_LOG (char*,char const*) ;
 int RARCH_PATH_CONTENT ;
 int RARCH_WARN (char*) ;
 char* elf_path_cst ;
 scalar_t__ envIsHomebrew () ;
 int errorDisp (int *) ;
 int errorInit (int *,int ,int ) ;
 int errorText (int *,char*) ;
 int exec_3dsx_no_path_in_args (char const*,char const**) ;
 int exec_cia (char const*,char const**) ;
 int exit (int ) ;
 int get_first_valid_core (char*) ;
 char const* path_get (int ) ;
 int path_is_empty (int ) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcpy (char*,char const*) ;

__attribute__((used)) static void frontend_ctr_exec(const char* path, bool should_load_game)
{
   char game_path[PATH_MAX];
   const char* arg_data[3];
   errorConf error_dialog;
   char error_string[200 + PATH_MAX];
   int args = 0;
   int error = 0;

   DEBUG_VAR(path);
   DEBUG_STR(path);

   game_path[0] = '\0';
   arg_data[0] = ((void*)0);

   arg_data[args] = elf_path_cst;
   arg_data[args + 1] = ((void*)0);
   args++;

   RARCH_LOG("Attempt to load core: [%s].\n", path);

   if (should_load_game && !path_is_empty(RARCH_PATH_CONTENT))
   {
      strcpy(game_path, path_get(RARCH_PATH_CONTENT));
      arg_data[args] = game_path;
      arg_data[args + 1] = ((void*)0);
      args++;
      RARCH_LOG("content path: [%s].\n", path_get(RARCH_PATH_CONTENT));
   }


   if (path && path[0])
   {
      if (envIsHomebrew())
         exec_3dsx_no_path_in_args(path, arg_data);
      else
      {
         RARCH_WARN("\n");
         RARCH_WARN("\n");
         RARCH_WARN("Warning:\n");
         RARCH_WARN("First core launch may take 20\n");
         RARCH_WARN("seconds! Do not force quit\n");
         RARCH_WARN("before then or your memory\n");
         RARCH_WARN("card may be corrupted!\n");
         RARCH_WARN("\n");
         RARCH_WARN("\n");
         exec_cia(path, arg_data);
      }

      errorInit(&error_dialog, ERROR_TEXT, CFG_LANGUAGE_EN);
      snprintf(error_string, sizeof(error_string),
            "Can't launch core:%s", path);
      errorText(&error_dialog, error_string);
      errorDisp(&error_dialog);
      exit(0);

   }
}
