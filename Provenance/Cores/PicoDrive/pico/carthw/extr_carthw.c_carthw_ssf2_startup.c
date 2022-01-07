
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_STATUS ;
 int PicoCartMemSetup ;
 int PicoLoadStateHook ;
 int carthw_chunks ;
 int carthw_ssf2_mem_setup ;
 int carthw_ssf2_state ;
 int carthw_ssf2_statef ;
 int elprintf (int ,char*) ;
 int* ssf2_banks ;

void carthw_ssf2_startup(void)
{
 int i;

 elprintf(EL_STATUS, "SSF2 mapper startup");


 for (i = 0; i < 8; i++)
  ssf2_banks[i] = i;

 PicoCartMemSetup = carthw_ssf2_mem_setup;
 PicoLoadStateHook = carthw_ssf2_statef;
 carthw_chunks = carthw_ssf2_state;
}
