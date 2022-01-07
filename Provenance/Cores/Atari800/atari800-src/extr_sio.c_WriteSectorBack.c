
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef char UBYTE ;


 int* CommandFrame ;
 int DataBuffer ;
 char SIO_MAX_DRIVES ;
 char SIO_WriteSector (char,int,int ) ;
 char SIO_WriteStatusBlock (char,int ) ;

__attribute__((used)) static UBYTE WriteSectorBack(void)
{
 UWORD sector;
 UBYTE unit;

 sector = CommandFrame[2] + (CommandFrame[3] << 8);
 unit = CommandFrame[0] - '1';
 if (unit >= SIO_MAX_DRIVES)
  return 0;
 switch (CommandFrame[1]) {
 case 0x4f:
  return SIO_WriteStatusBlock(unit, DataBuffer);
 case 0x50:
 case 0x57:
 case 0xD0:
 case 0xD7:
  return SIO_WriteSector(unit, sector, DataBuffer);
 default:
  return 'E';
 }
}
