
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_STATUS ;
 int PicoCartMemSetup ;
 int PicoLoadStateHook ;
 int PicoResetHook ;
 int carthw_Xin1_mem_setup ;
 int carthw_Xin1_reset ;
 int carthw_Xin1_state ;
 int carthw_Xin1_statef ;
 int carthw_chunks ;
 int elprintf (int ,char*) ;

void carthw_Xin1_startup(void)
{
 elprintf(EL_STATUS, "X-in-1 mapper startup");

 PicoCartMemSetup = carthw_Xin1_mem_setup;
 PicoResetHook = carthw_Xin1_reset;
 PicoLoadStateHook = carthw_Xin1_statef;
 carthw_chunks = carthw_Xin1_state;
}
