
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int salamander_name ;
typedef int salamander_basename ;
typedef int new_path ;
struct TYPE_2__ {int * dirs; } ;


 size_t DEFAULT_DIR_CORE ;




 int PATH_MAX_LENGTH ;
 int RARCH_PATH_CONTENT ;
 int fill_pathname_join (char*,int ,char*,size_t) ;
 int frontend_driver_get_salamander_basename (char*,int) ;
 int frontend_gx_exec (char*,int) ;
 TYPE_1__ g_defaults ;
 int gx_fork_mode ;
 int gx_rom_path ;
 int path_set (int ,char*) ;
 int string_is_empty (int ) ;

__attribute__((used)) static void frontend_gx_exitspawn(char *s, size_t len)
{
   bool should_load_game = 0;
   frontend_gx_exec(s, should_load_game);
}
