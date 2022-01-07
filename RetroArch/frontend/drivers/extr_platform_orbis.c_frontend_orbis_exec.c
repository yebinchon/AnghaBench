
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int argp ;


 int RARCH_LOG (char*,...) ;
 int RARCH_PATH_CONTENT ;
 int path_get (int ) ;
 int path_is_empty (int ) ;
 int strlcat (char*,int ,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void frontend_orbis_exec(const char *path, bool should_load_game)
{
   char argp[512] = {0};
   int args = 0;


   if (should_load_game && !path_is_empty(RARCH_PATH_CONTENT))
   {
      argp[args] = '\0';
      strlcat(argp + args, path_get(RARCH_PATH_CONTENT), sizeof(argp) - args);
      args += strlen(argp + args) + 1;
   }


   RARCH_LOG("Attempt to load executable: [%s].\n", path);
   RARCH_LOG("Attempt to load executable: %d [%s].\n", args, argp);



}
