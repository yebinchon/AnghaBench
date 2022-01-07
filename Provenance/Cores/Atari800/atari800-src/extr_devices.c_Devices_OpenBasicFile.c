
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * BINLOAD_bin_file ;
 int CPU_ClrN ;
 int CPU_regY ;
 int CPU_rts_handler ;
 int Devices_CloseBasicFile ;
 int Devices_ReadBasicFile ;
 int Devices_RestoreEHOPEN ;
 int ESC_AddEscRts (int ,int ,int ) ;
 int ESC_EHCLOS ;
 int ESC_EHREAD ;
 int SEEK_SET ;
 int ehclos_addr ;
 int ehread_addr ;
 int fseek (int *,int ,int ) ;

__attribute__((used)) static void Devices_OpenBasicFile(void)
{
 if (BINLOAD_bin_file != ((void*)0)) {
  fseek(BINLOAD_bin_file, 0, SEEK_SET);
  ESC_AddEscRts(ehclos_addr, ESC_EHCLOS, Devices_CloseBasicFile);
  ESC_AddEscRts(ehread_addr, ESC_EHREAD, Devices_ReadBasicFile);
  CPU_regY = 1;
  CPU_ClrN;
 }
 CPU_rts_handler = Devices_RestoreEHOPEN;
}
