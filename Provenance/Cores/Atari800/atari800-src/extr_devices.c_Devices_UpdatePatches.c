
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ B_DEVICE_BEGIN ;
 scalar_t__ B_DEVICE_END ;
 scalar_t__ B_PATCH_CLOS ;
 scalar_t__ B_PATCH_INIT ;
 scalar_t__ B_PATCH_OPEN ;
 scalar_t__ B_PATCH_READ ;
 scalar_t__ B_PATCH_SPEC ;
 scalar_t__ B_PATCH_STAT ;
 scalar_t__ B_PATCH_WRIT ;
 scalar_t__ B_TABLE_ADDRESS ;
 int Devices_B_Close ;
 int Devices_B_Init ;
 int Devices_B_Null ;
 int Devices_B_Open ;
 int Devices_B_Read ;
 int Devices_B_Write ;
 int Devices_H_Close ;
 int Devices_H_Open ;
 int Devices_H_Read ;
 int Devices_H_Special ;
 int Devices_H_Status ;
 int Devices_H_Write ;
 int Devices_RemoveHATABSEntry (char,int ,scalar_t__) ;
 scalar_t__ Devices_TABLE_CLOS ;
 scalar_t__ Devices_TABLE_INIT ;
 scalar_t__ Devices_TABLE_OPEN ;
 scalar_t__ Devices_TABLE_READ ;
 scalar_t__ Devices_TABLE_SPEC ;
 scalar_t__ Devices_TABLE_STAT ;
 scalar_t__ Devices_TABLE_WRIT ;
 scalar_t__ Devices_enable_b_patch ;
 scalar_t__ Devices_enable_h_patch ;
 scalar_t__ Devices_enable_r_patch ;
 int ESC_AddEscRts (scalar_t__,int ,int ) ;
 int ESC_BCLOS ;
 int ESC_BINIT ;
 int ESC_BOPEN ;
 int ESC_BREAD ;
 int ESC_BSPEC ;
 int ESC_BSTAT ;
 int ESC_BWRIT ;
 int ESC_HHCLOS ;
 int ESC_HHOPEN ;
 int ESC_HHREAD ;
 int ESC_HHSPEC ;
 int ESC_HHSTAT ;
 int ESC_HHWRIT ;
 int ESC_RCLOS ;
 int ESC_RINIT ;
 int ESC_ROPEN ;
 int ESC_RREAD ;
 int ESC_RSPEC ;
 int ESC_RSTAT ;
 int ESC_RWRIT ;
 int ESC_Remove (int ) ;
 scalar_t__ H_DEVICE_BEGIN ;
 scalar_t__ H_DEVICE_END ;
 scalar_t__ H_PATCH_CLOS ;
 scalar_t__ H_PATCH_OPEN ;
 scalar_t__ H_PATCH_READ ;
 scalar_t__ H_PATCH_SPEC ;
 scalar_t__ H_PATCH_STAT ;
 scalar_t__ H_PATCH_WRIT ;
 scalar_t__ H_TABLE_ADDRESS ;
 int MEMORY_SetROM (scalar_t__,scalar_t__) ;
 int MEMORY_dFillMem (scalar_t__,int,scalar_t__) ;
 int MEMORY_dPutWord (scalar_t__,scalar_t__) ;
 int RDevice_CLOS ;
 int RDevice_INIT ;
 int RDevice_OPEN ;
 int RDevice_READ ;
 int RDevice_SPEC ;
 int RDevice_STAT ;
 int RDevice_WRIT ;
 scalar_t__ R_DEVICE_BEGIN ;
 scalar_t__ R_DEVICE_END ;
 scalar_t__ R_PATCH_CLOS ;
 scalar_t__ R_PATCH_INIT ;
 scalar_t__ R_PATCH_OPEN ;
 scalar_t__ R_PATCH_READ ;
 scalar_t__ R_PATCH_SPEC ;
 scalar_t__ R_PATCH_STAT ;
 scalar_t__ R_PATCH_WRIT ;
 scalar_t__ R_TABLE_ADDRESS ;
 int b_entry_address ;
 int h_entry_address ;
 int r_entry_address ;

void Devices_UpdatePatches(void)
{
 if (Devices_enable_h_patch) {


  MEMORY_SetROM(H_DEVICE_BEGIN, H_DEVICE_END);

  MEMORY_dPutWord(H_TABLE_ADDRESS + Devices_TABLE_OPEN, H_PATCH_OPEN - 1);
  MEMORY_dPutWord(H_TABLE_ADDRESS + Devices_TABLE_CLOS, H_PATCH_CLOS - 1);
  MEMORY_dPutWord(H_TABLE_ADDRESS + Devices_TABLE_READ, H_PATCH_READ - 1);
  MEMORY_dPutWord(H_TABLE_ADDRESS + Devices_TABLE_WRIT, H_PATCH_WRIT - 1);
  MEMORY_dPutWord(H_TABLE_ADDRESS + Devices_TABLE_STAT, H_PATCH_STAT - 1);
  MEMORY_dPutWord(H_TABLE_ADDRESS + Devices_TABLE_SPEC, H_PATCH_SPEC - 1);

  ESC_AddEscRts(H_PATCH_OPEN, ESC_HHOPEN, Devices_H_Open);
  ESC_AddEscRts(H_PATCH_CLOS, ESC_HHCLOS, Devices_H_Close);
  ESC_AddEscRts(H_PATCH_READ, ESC_HHREAD, Devices_H_Read);
  ESC_AddEscRts(H_PATCH_WRIT, ESC_HHWRIT, Devices_H_Write);
  ESC_AddEscRts(H_PATCH_STAT, ESC_HHSTAT, Devices_H_Status);
  ESC_AddEscRts(H_PATCH_SPEC, ESC_HHSPEC, Devices_H_Special);

 }
 else {

  Devices_RemoveHATABSEntry('H', h_entry_address, H_TABLE_ADDRESS);

  ESC_Remove(ESC_HHOPEN);
  ESC_Remove(ESC_HHCLOS);
  ESC_Remove(ESC_HHREAD);
  ESC_Remove(ESC_HHWRIT);
  ESC_Remove(ESC_HHSTAT);
  ESC_Remove(ESC_HHSPEC);

  MEMORY_dFillMem(H_DEVICE_BEGIN, 0xff, H_DEVICE_END - H_DEVICE_BEGIN + 1);
 }
 if (Devices_enable_b_patch) {

  MEMORY_SetROM(B_DEVICE_BEGIN, B_DEVICE_END);

  MEMORY_dPutWord(B_TABLE_ADDRESS + Devices_TABLE_OPEN, B_PATCH_OPEN - 1);
  MEMORY_dPutWord(B_TABLE_ADDRESS + Devices_TABLE_CLOS, B_PATCH_CLOS - 1);
  MEMORY_dPutWord(B_TABLE_ADDRESS + Devices_TABLE_READ, B_PATCH_READ - 1);
  MEMORY_dPutWord(B_TABLE_ADDRESS + Devices_TABLE_WRIT, B_PATCH_WRIT - 1);
  MEMORY_dPutWord(B_TABLE_ADDRESS + Devices_TABLE_STAT, B_PATCH_STAT - 1);
  MEMORY_dPutWord(B_TABLE_ADDRESS + Devices_TABLE_SPEC, B_PATCH_SPEC - 1);
  MEMORY_dPutWord(B_TABLE_ADDRESS + Devices_TABLE_INIT, B_PATCH_INIT - 1);

  ESC_AddEscRts(B_PATCH_OPEN, ESC_BOPEN, Devices_B_Open);
  ESC_AddEscRts(B_PATCH_CLOS, ESC_BCLOS, Devices_B_Close);
  ESC_AddEscRts(B_PATCH_READ, ESC_BREAD, Devices_B_Read);
  ESC_AddEscRts(B_PATCH_WRIT, ESC_BWRIT, Devices_B_Write);
  ESC_AddEscRts(B_PATCH_STAT, ESC_BSTAT, Devices_B_Null);
  ESC_AddEscRts(B_PATCH_SPEC, ESC_BSPEC, Devices_B_Null);
  ESC_AddEscRts(B_PATCH_INIT, ESC_BINIT, Devices_B_Init);
 }
 else {

  Devices_RemoveHATABSEntry('B', b_entry_address, B_TABLE_ADDRESS);

  ESC_Remove(ESC_BOPEN);
  ESC_Remove(ESC_BCLOS);
  ESC_Remove(ESC_BREAD);
  ESC_Remove(ESC_BWRIT);
  ESC_Remove(ESC_BSTAT);
  ESC_Remove(ESC_BSPEC);

  MEMORY_dFillMem(B_DEVICE_BEGIN, 0xff, B_DEVICE_END - B_DEVICE_BEGIN + 1);
 }
}
