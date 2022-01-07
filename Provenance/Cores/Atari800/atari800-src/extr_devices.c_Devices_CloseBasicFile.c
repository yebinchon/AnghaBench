
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BINLOAD_LOADING_BASIC_RUN ;
 scalar_t__ BINLOAD_LOADING_BASIC_SAVED ;
 int * BINLOAD_bin_file ;
 scalar_t__ BINLOAD_loading_basic ;
 int CPU_ClrN ;
 int CPU_regY ;
 int CPU_rts_handler ;
 int Devices_E_Read ;
 int Devices_IgnoreReady ;
 int Devices_RestoreEHCLOS ;
 int Devices_RestoreEHREAD () ;
 int ESC_AddEscRts (int ,int ,int ) ;
 int ESC_EHREAD ;
 int ESC_EHWRIT ;
 int ehread_addr ;
 int ehwrit_addr ;
 int fclose (int *) ;
 int ready_prompt ;
 int ready_ptr ;

__attribute__((used)) static void Devices_CloseBasicFile(void)
{
 if (BINLOAD_bin_file != ((void*)0)) {
  fclose(BINLOAD_bin_file);
  BINLOAD_bin_file = ((void*)0);

  if (BINLOAD_loading_basic != 0 && BINLOAD_loading_basic != BINLOAD_LOADING_BASIC_SAVED) {
   ready_ptr = ready_prompt;
   ESC_AddEscRts(ehwrit_addr, ESC_EHWRIT, Devices_IgnoreReady);
   BINLOAD_loading_basic = BINLOAD_LOADING_BASIC_RUN;
  }
  else
   BINLOAD_loading_basic = 0;
 }



 Devices_RestoreEHREAD();

 CPU_rts_handler = Devices_RestoreEHCLOS;
 CPU_regY = 1;
 CPU_ClrN;
}
