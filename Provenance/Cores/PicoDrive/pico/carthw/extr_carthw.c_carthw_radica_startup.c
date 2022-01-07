
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_STATUS ;
 int PicoCartMemSetup ;
 int PicoLoadStateHook ;
 int PicoResetHook ;
 int carthw_Xin1_state ;
 int carthw_chunks ;
 int carthw_radica_mem_setup ;
 int carthw_radica_reset ;
 int carthw_radica_statef ;
 int elprintf (int ,char*) ;

void carthw_radica_startup(void)
{
 elprintf(EL_STATUS, "Radica mapper startup");

 PicoCartMemSetup = carthw_radica_mem_setup;
 PicoResetHook = carthw_radica_reset;
 PicoLoadStateHook = carthw_radica_statef;
 carthw_chunks = carthw_Xin1_state;
}
