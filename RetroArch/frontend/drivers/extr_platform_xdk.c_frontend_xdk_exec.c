
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptr ;
typedef int game_path ;
struct TYPE_4__ {scalar_t__ Data; } ;
typedef TYPE_1__ LAUNCH_DATA ;


 int MAX_LAUNCH_DATA_SIZE ;
 int RARCH_PATH_CONTENT ;
 int XLaunchNewImage (char const*,TYPE_1__*) ;
 int XSetLaunchData (char*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 char* path_get (int ) ;
 int path_is_empty (int ) ;
 int snprintf (char*,int,char*,char*) ;
 int string_is_empty (char const*) ;
 int strlcpy (char*,char*,int) ;
 int verbosity_disable () ;
 int verbosity_enable () ;
 int verbosity_is_enabled () ;

__attribute__((used)) static void frontend_xdk_exec(const char *path, bool should_load_game)
{

   bool original_verbose = verbosity_is_enabled();






   (void)should_load_game;
   if (original_verbose)
      verbosity_enable();
   else
      verbosity_disable();

}
