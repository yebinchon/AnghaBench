
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int ANTIC_PutByte (int,int ) ;
 int Atari800_MACHINE_5200 ;
 int Atari800_machine_type ;
 int AxlonPutByte (int,int ) ;
 int CARTRIDGE_BountyBob1 (int) ;
 int CARTRIDGE_BountyBob2 (int) ;
 int CARTRIDGE_PutByte (int,int ) ;
 int GTIA_PutByte (int,int ) ;
 int MosaicPutByte (int,int ) ;
 int PBI_D1PutByte (int,int ) ;
 int PBI_D6PutByte (int,int ) ;
 int PBI_D7PutByte (int,int ) ;
 int PIA_PutByte (int,int ) ;
 int POKEY_PutByte (int,int ) ;

void MEMORY_HwPutByte(UWORD addr, UBYTE byte)
{
 switch (addr & 0xff00) {
 case 0x4f00:
 case 0x8f00:
  CARTRIDGE_BountyBob1(addr);
  break;
 case 0x5f00:
 case 0x9f00:
  CARTRIDGE_BountyBob2(addr);
  break;
 case 0xd000:
 case 0xc000:
 case 0xc100:
 case 0xc200:
 case 0xc300:
 case 0xc400:
 case 0xc500:
 case 0xc600:
 case 0xc700:
 case 0xc800:
 case 0xc900:
 case 0xca00:
 case 0xcb00:
 case 0xcc00:
 case 0xcd00:
 case 0xce00:
  GTIA_PutByte(addr, byte);
  break;
 case 0xd200:
 case 0xe800:
 case 0xe900:
 case 0xea00:
 case 0xeb00:
 case 0xec00:
 case 0xed00:
 case 0xee00:
 case 0xef00:
  POKEY_PutByte(addr, byte);
  break;
 case 0xd300:
  PIA_PutByte(addr, byte);
  break;
 case 0xd400:
  ANTIC_PutByte(addr, byte);
  break;
 case 0xd500:
  CARTRIDGE_PutByte(addr, byte);
  break;
 case 0xff00:
  MosaicPutByte(addr,byte);
  break;
 case 0xcf00:
 case 0x0f00:
  if (Atari800_machine_type == Atari800_MACHINE_5200) {
   GTIA_PutByte(addr, byte);
  }
  else {
   AxlonPutByte(addr,byte);
  }
  break;
 case 0xd100:
  PBI_D1PutByte(addr, byte);
  break;
 case 0xd600:
  PBI_D6PutByte(addr, byte);
  break;
 case 0xd700:
  PBI_D7PutByte(addr, byte);
  break;
 default:
  break;
 }
}
