
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int shutdown; } ;
typedef TYPE_1__ frontend_ctx_driver_t ;


 int CELL_SYSMODULE_FS ;
 int CELL_SYSMODULE_IO ;
 int CELL_SYSMODULE_SYSUTIL_GAME ;


 int cellSysmoduleLoadModule (int ) ;
 int cellSysmoduleUnloadModule (int ) ;
 TYPE_1__* frontend_get_ptr () ;
 int frontend_ps3_exec (char*,int) ;
 int frontend_ps3_shutdown ;
 int ps3_fork_mode ;
 int verbosity_disable () ;
 int verbosity_enable () ;
 int verbosity_is_enabled () ;

__attribute__((used)) static void frontend_ps3_exitspawn(char *core_path, size_t core_path_size)
{
}
