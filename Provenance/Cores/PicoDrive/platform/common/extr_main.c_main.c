
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int emu_finish () ;
 int emu_init () ;
 int emu_loop () ;
 int emu_prep_defconfig () ;
 int emu_read_config (int *,int ) ;
 scalar_t__ emu_reload_rom (int ) ;
 int emu_save_load_game (int,int ) ;
 int engineState ;
 char** g_argv ;
 int in_init () ;
 scalar_t__ load_state_slot ;
 int menu_init () ;
 int menu_loop () ;
 int menu_loop_tray () ;
 int parse_cmd_line (int,char**) ;
 int plat_early_init () ;
 int plat_finish () ;
 int plat_init () ;
 int plat_target_finish () ;
 int plat_target_init () ;
 int printf (char*,...) ;
 int rom_fname_reload ;
 scalar_t__ state_slot ;

int main(int argc, char *argv[])
{
 g_argv = argv;

 plat_early_init();

 in_init();


 plat_target_init();
 plat_init();

 emu_prep_defconfig();
 emu_read_config(((void*)0), 0);

 emu_init();
 menu_init();

 engineState = 133;

 if (argc > 1)
  parse_cmd_line(argc, argv);

 if (engineState == 131)
 {
  if (emu_reload_rom(rom_fname_reload)) {
   engineState = 129;
   if (load_state_slot >= 0) {
    state_slot = load_state_slot;
    emu_save_load_game(1, 0);
   }
  }
 }

 for (;;)
 {
  switch (engineState)
  {
   case 133:
    menu_loop();
    break;

   case 128:
    menu_loop_tray();
    break;

   case 131:
    if (emu_reload_rom(rom_fname_reload))
     engineState = 129;
    else {
     printf("PGS_ReloadRom == 0\n");
     engineState = 133;
    }
    break;

   case 130:
    engineState = 129;


   case 129:
    emu_loop();
    break;

   case 132:
    goto endloop;

   default:
    printf("engine got into unknown state (%i), exitting\n", engineState);
    goto endloop;
  }
 }

 endloop:

 emu_finish();
 plat_finish();
 plat_target_finish();

 return 0;
}
