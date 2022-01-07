
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int path ;
typedef int FILE ;


 int PicoInit () ;
 int PicoMCDcloseTray ;
 int PicoMCDopenTray ;
 int PicoMessage ;
 int config_readlrom (char*) ;
 int emu_tray_close ;
 int emu_tray_open ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (int ,int,int,int *) ;
 int make_config_cfg (char*) ;
 int malloc (int) ;
 int mkdir_path (char*,int,char*) ;
 int p32x_bios_m ;
 int p32x_bios_s ;
 int plat_get_root_dir (char*,int) ;
 int plat_status_msg_busy_next ;
 int pprof_init () ;
 int sndout_init () ;

void emu_init(void)
{
 char path[512];
 int pos;
 pos = plat_get_root_dir(path, sizeof(path) - 4);
 mkdir_path(path, pos, "mds");
 mkdir_path(path, pos, "srm");
 mkdir_path(path, pos, "brm");
 mkdir_path(path, pos, "cfg");

 pprof_init();

 make_config_cfg(path);
 config_readlrom(path);

 PicoInit();
 PicoMessage = plat_status_msg_busy_next;
 PicoMCDopenTray = emu_tray_open;
 PicoMCDcloseTray = emu_tray_close;

 sndout_init();
}
