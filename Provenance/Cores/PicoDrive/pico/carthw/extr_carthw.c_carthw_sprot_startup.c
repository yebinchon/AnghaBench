
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_STATUS ;
 int PicoCartMemSetup ;
 int PicoCartUnloadHook ;
 int carthw_sprot_mem_setup ;
 int carthw_sprot_unload ;
 int elprintf (int ,char*) ;

void carthw_sprot_startup(void)
{
  elprintf(EL_STATUS, "Prot emu startup");

  PicoCartMemSetup = carthw_sprot_mem_setup;
  PicoCartUnloadHook = carthw_sprot_unload;
}
