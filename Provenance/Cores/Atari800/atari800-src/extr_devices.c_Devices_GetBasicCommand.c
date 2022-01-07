
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ BINLOAD_LOADING_BASIC_LISTED ;
 scalar_t__ BINLOAD_LOADING_BASIC_SAVED ;
 scalar_t__ BINLOAD_loading_basic ;
 int CPU_ClrN ;
 int CPU_regA ;
 int CPU_regY ;
 int CPU_rts_handler ;
 int Devices_E_Read ;
 int Devices_OpenBasicFile ;
 int Devices_RestoreEHREAD ;
 int ESC_AddEscRts (int ,int ,int ) ;
 int ESC_EHOPEN ;
 int ESC_EHREAD ;
 char* basic_command_ptr ;
 int ehopen_addr ;
 int ehread_addr ;

__attribute__((used)) static void Devices_GetBasicCommand(void)
{
 if (basic_command_ptr != ((void*)0)) {
  CPU_regA = *basic_command_ptr++;
  CPU_regY = 1;
  CPU_ClrN;
  if (*basic_command_ptr != '\0')
   return;
  if (BINLOAD_loading_basic == BINLOAD_LOADING_BASIC_SAVED || BINLOAD_loading_basic == BINLOAD_LOADING_BASIC_LISTED)
   ESC_AddEscRts(ehopen_addr, ESC_EHOPEN, Devices_OpenBasicFile);
  basic_command_ptr = ((void*)0);
 }



 CPU_rts_handler = Devices_RestoreEHREAD;

}
