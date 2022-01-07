
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UWORD ;


 char MEMORY_dGetByte (scalar_t__) ;
 scalar_t__ MEMORY_dGetWord (scalar_t__) ;
 int MEMORY_dPutByte (scalar_t__,int ) ;
 int MEMORY_dPutWord (scalar_t__,int ) ;

void Devices_RemoveHATABSEntry(char device, UWORD entry_address,
         UWORD table_address)
{
 if (entry_address != 0 && MEMORY_dGetByte(entry_address) == device
  && MEMORY_dGetWord(entry_address + 1) == table_address) {
  MEMORY_dPutByte(entry_address, 0);
  MEMORY_dPutWord(entry_address + 1, 0);
 }
}
