
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoConfigFile ;
 int config_readlrom (int ) ;
 int emu_Deinit () ;
 int emu_HandleResume () ;
 int emu_Init () ;
 int emu_ReadConfig (int ,int ) ;
 int emu_prepareDefaultConfig () ;
 int emu_reload_rom (int ) ;
 int engineState ;
 int engineStateSuspend ;
 int gprof_cleanup () ;
 int lprintf (char*,...) ;
 int menu_init () ;
 int menu_loop () ;
 int mp3_deinit () ;
 int mp3_last_error ;
 int pemu_loop () ;
 int psp_finish () ;
 int psp_init () ;
 int psp_resume_suspend () ;
 int psp_unhandled_suspend ;
 int psp_wait_suspend () ;
 int rom_fname_loaded ;
 int rom_fname_reload ;
 int strcpy (int ,int ) ;

int pico_main(void)
{
 psp_init();

 emu_prepareDefaultConfig();
 emu_ReadConfig(0, 0);
 config_readlrom(PicoConfigFile);

 emu_Init();
 menu_init();



 engineState = 134;

 for (;;)
 {
  switch (engineState)
  {
   case 134:

    menu_loop();




    break;

   case 132:
    if (emu_reload_rom(rom_fname_reload)) {
     engineState = 130;
     if (mp3_last_error != 0)
      engineState = 134;
    } else {
     lprintf("PGS_ReloadRom == 0\n");
     engineState = 134;
    }
    break;

   case 128:
    while (engineState == 128)
     psp_wait_suspend();
    break;

   case 129:
    psp_unhandled_suspend = 0;
    psp_resume_suspend();
    emu_HandleResume();
    engineState = engineStateSuspend;
    break;

   case 131:
    engineState = 130;

   case 130:
    if (psp_unhandled_suspend) {
     psp_unhandled_suspend = 0;
     psp_resume_suspend();
     emu_HandleResume();
     break;
    }
    pemu_loop();



    break;

   case 133:
    goto endloop;

   default:
    lprintf("engine got into unknown state (%i), exitting\n", engineState);
    goto endloop;
  }
 }

 endloop:

 mp3_deinit();
 emu_Deinit();




 psp_finish();


 return 0;
}
