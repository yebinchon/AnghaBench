
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* BINLOAD_start_binloading ;
 int Devices_H_BinLoaderCont () ;
 int Devices_ICAX1Z ;
 int Devices_ICAX2Z ;
 void* FALSE ;
 int MEMORY_dGetByte (int ) ;
 void* TRUE ;
 void* initBinFile ;
 void* runBinFile ;

__attribute__((used)) static void Devices_H_LoadProceed(int mydos)
{

 if (mydos) {
  switch (MEMORY_dGetByte(Devices_ICAX1Z) ) {
  case 4:
   runBinFile = TRUE;
   initBinFile = TRUE;
   break;
  case 5:
   runBinFile = TRUE;
   initBinFile = FALSE;
   break;
  case 6:
   runBinFile = FALSE;
   initBinFile = TRUE;
   break;
  case 7:
  default:
   runBinFile = FALSE;
   initBinFile = FALSE;
   break;
  }
 }
 else {
  if (MEMORY_dGetByte(Devices_ICAX2Z) < 128)
   runBinFile = TRUE;
  else
   runBinFile = FALSE;
  initBinFile = TRUE;
 }

 BINLOAD_start_binloading = TRUE;
 Devices_H_BinLoaderCont();
}
