
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B_TABLE_ADDRESS ;
 int Devices_UpdateHATABSEntry (char,int ,int ) ;
 scalar_t__ Devices_enable_b_patch ;
 scalar_t__ Devices_enable_h_patch ;
 scalar_t__ Devices_enable_r_patch ;
 int H_TABLE_ADDRESS ;
 int R_TABLE_ADDRESS ;
 int b_entry_address ;
 int h_entry_address ;
 int r_entry_address ;

void Devices_Frame(void)
{
 if (Devices_enable_h_patch)
  h_entry_address = Devices_UpdateHATABSEntry('H', h_entry_address, H_TABLE_ADDRESS);






 if (Devices_enable_b_patch)
  b_entry_address = Devices_UpdateHATABSEntry('B', b_entry_address, B_TABLE_ADDRESS);
}
