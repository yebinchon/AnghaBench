
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* photo_title; char* game_title; int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ CellScreenShotSetParam ;


 int CELL_SYSMODULE_AVCONF_EXT ;
 int CELL_SYSMODULE_FONT ;
 int CELL_SYSMODULE_FONTFT ;
 int CELL_SYSMODULE_FREETYPE ;
 int CELL_SYSMODULE_FS ;
 int CELL_SYSMODULE_IO ;
 int CELL_SYSMODULE_JPGDEC ;
 int CELL_SYSMODULE_NET ;
 int CELL_SYSMODULE_PNGDEC ;
 int CELL_SYSMODULE_SYSUTIL_GAME ;
 int CELL_SYSMODULE_SYSUTIL_NP ;
 int CELL_SYSMODULE_SYSUTIL_SCREENSHOT ;
 int NP_POOL_SIZE ;
 int RARCH_LOG (char*) ;
 int callback_sysutil_exit ;
 int cellScreenShotEnable () ;
 int cellScreenShotSetParameter (TYPE_1__*) ;
 int cellSysmoduleLoadModule (int ) ;
 int cellSysutilRegisterCallback (int ,int ,int *) ;
 int np_pool ;
 int sceNpInit (int ,int ) ;
 int sys_net_initialize_network () ;

__attribute__((used)) static void frontend_ps3_init(void *data)
{
   (void)data;
   sys_net_initialize_network();
   sceNpInit(NP_POOL_SIZE, np_pool);
}
