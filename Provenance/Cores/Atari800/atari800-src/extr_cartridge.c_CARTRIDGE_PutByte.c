
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int AF80_D5PutByte (int,int ) ;
 scalar_t__ AF80_enabled ;
 int CARTRIDGE_main ;
 int CARTRIDGE_piggyback ;
 int IDE_PutByte (int,int ) ;
 scalar_t__ IDE_enabled ;
 int PutByte (int *,int,int ) ;
 int RTIME_PutByte (int ) ;
 scalar_t__ RTIME_enabled ;

void CARTRIDGE_PutByte(UWORD addr, UBYTE byte)
{
 if (RTIME_enabled && (addr == 0xd5b8 || addr == 0xd5b9)) {
  RTIME_PutByte(byte);
 }





 PutByte(&CARTRIDGE_main, addr, byte);
 PutByte(&CARTRIDGE_piggyback, addr, byte);
}
