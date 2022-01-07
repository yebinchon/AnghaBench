
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int game_path ;


 int CELL_SYSMODULE_NET ;
 int CELL_SYSMODULE_SYSUTIL_NP ;
 int RARCH_LOG (char*,char const*) ;
 int RARCH_PATH_CONTENT ;
 int cellSysmoduleUnloadModule (int ) ;
 int frontend_ps3_exec_exitspawn (char const*,char const**,int *) ;
 int path_get (int ) ;
 int path_is_empty (int ) ;
 int sceNpTerm () ;
 int strlcpy (char*,int ,int) ;
 int sys_net_finalize_network () ;
 int verbosity_disable () ;
 int verbosity_enable () ;
 int verbosity_is_enabled () ;

__attribute__((used)) static void frontend_ps3_exec(const char *path, bool should_load_game)
{

   bool original_verbose = verbosity_is_enabled();
   verbosity_enable();


   (void)should_load_game;

   RARCH_LOG("Attempt to load executable: [%s].\n", path);


   if (should_load_game && !path_is_empty(RARCH_PATH_CONTENT))
   {
      char game_path[256];
      strlcpy(game_path, path_get(RARCH_PATH_CONTENT), sizeof(game_path));

      const char * const spawn_argv[] = {
         game_path,
         ((void*)0)
      };

      frontend_ps3_exec_exitspawn(path,
            (const char** const)spawn_argv, ((void*)0));
   }
   else

   {
      frontend_ps3_exec_exitspawn(path,
            ((void*)0), ((void*)0));
   }

   sceNpTerm();
   sys_net_finalize_network();
   cellSysmoduleUnloadModule(CELL_SYSMODULE_SYSUTIL_NP);
   cellSysmoduleUnloadModule(CELL_SYSMODULE_NET);


   if (original_verbose)
      verbosity_enable();
   else
      verbosity_disable();

}
