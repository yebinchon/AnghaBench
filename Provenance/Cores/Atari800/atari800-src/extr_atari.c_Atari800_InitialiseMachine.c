
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Atari800_UpdateJumper () ;
 int Atari800_UpdateKeyboardDetached () ;
 int Devices_UpdatePatches () ;
 int ESC_ClearAll () ;
 int FALSE ;
 int MEMORY_InitialiseMachine () ;
 int TRUE ;
 int load_roms () ;

int Atari800_InitialiseMachine(void)
{
 ESC_ClearAll();
 if (!load_roms())
  return FALSE;
 Atari800_UpdateKeyboardDetached();
 Atari800_UpdateJumper();
 MEMORY_InitialiseMachine();
 Devices_UpdatePatches();
 return TRUE;
}
