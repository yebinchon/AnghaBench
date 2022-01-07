
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vapi_delay_time; } ;
typedef TYPE_1__ vapi_additional_info_t ;
typedef int UWORD ;
typedef char UBYTE ;


 int* CommandFrame ;
 int * DataBuffer ;
 int DataIndex ;
 int ExpectedBytes ;
 int IMAGE_TYPE_VAPI ;
 int Log_print (char*,int,int,int,int,int) ;
 int POKEY_DELAYED_SERIN_IRQ ;
 int SECTOR_DELAY ;
 int SIO_ChkSum (int ,int) ;
 int SIO_DriveStatus (int,int ) ;
 int SIO_FormatDisk (int,int ,int,int) ;
 int SIO_FormatFrame ;
 int SIO_LAST_READ ;
 int SIO_LAST_WRITE ;
 int SIO_MAX_DRIVES ;
 int SIO_NoFrame ;
 int SIO_ReadFrame ;
 int SIO_ReadSector (int,int,int ) ;
 int SIO_ReadStatusBlock (int,int ) ;
 int SIO_SERIN_INTERVAL ;
 int SIO_SizeOfSector (char,int,int*,int *) ;
 int SIO_WriteFrame ;
 int* SIO_format_sectorcount ;
 int* SIO_format_sectorsize ;
 int SIO_last_drive ;
 int SIO_last_op ;
 int SIO_last_op_time ;
 int TransferStatus ;
 scalar_t__* additional_info ;
 int delay_counter ;
 int * image_type ;

__attribute__((used)) static UBYTE Command_Frame(void)
{
 int unit;
 int sector;
 int realsize;

 sector = CommandFrame[2] | (((UWORD) CommandFrame[3]) << 8);
 unit = CommandFrame[0] - '1';

 if (unit < 0 || unit >= SIO_MAX_DRIVES) {

  Log_print("Unknown command frame: %02x %02x %02x %02x %02x",
      CommandFrame[0], CommandFrame[1], CommandFrame[2],
      CommandFrame[3], CommandFrame[4]);
  TransferStatus = SIO_NoFrame;
  return 0;
 }
 switch (CommandFrame[1]) {
 case 0x4e:





  DataBuffer[0] = SIO_ReadStatusBlock(unit, DataBuffer + 1);
  DataBuffer[13] = SIO_ChkSum(DataBuffer + 1, 12);
  DataIndex = 0;
  ExpectedBytes = 14;
  TransferStatus = SIO_ReadFrame;
  POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL;
  return 'A';
 case 0x4f:





  ExpectedBytes = 13;
  DataIndex = 0;
  TransferStatus = SIO_WriteFrame;
  return 'A';
 case 0x50:
 case 0x57:
 case 0xD0:
 case 0xD7:





  SIO_SizeOfSector((UBYTE) unit, sector, &realsize, ((void*)0));
  ExpectedBytes = realsize + 1;
  DataIndex = 0;
  TransferStatus = SIO_WriteFrame;
  SIO_last_op = SIO_LAST_WRITE;
  SIO_last_op_time = 10;
  SIO_last_drive = unit + 1;
  return 'A';
 case 0x52:
 case 0xD2:





  SIO_SizeOfSector((UBYTE) unit, sector, &realsize, ((void*)0));
  DataBuffer[0] = SIO_ReadSector(unit, sector, DataBuffer + 1);
  DataBuffer[1 + realsize] = SIO_ChkSum(DataBuffer + 1, realsize);
  DataIndex = 0;
  ExpectedBytes = 2 + realsize;
  TransferStatus = SIO_ReadFrame;


  POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL << 2;
  if (image_type[unit] == IMAGE_TYPE_VAPI) {
   vapi_additional_info_t *info;
   info = (vapi_additional_info_t *)additional_info[unit];
   if (info == ((void*)0))
    POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL << 2;
   else
    POKEY_DELAYED_SERIN_IRQ = ((info->vapi_delay_time + 114/2) / 114) - 12;
  }

  else if (sector == 1) {
   POKEY_DELAYED_SERIN_IRQ += delay_counter;
   delay_counter = SECTOR_DELAY;
  }
  else {
   delay_counter = 0;
  }

  SIO_last_op = SIO_LAST_READ;
  SIO_last_op_time = 10;
  SIO_last_drive = unit + 1;
  return 'A';
 case 0x53:





  DataBuffer[0] = SIO_DriveStatus(unit, DataBuffer + 1);
  DataBuffer[1 + 4] = SIO_ChkSum(DataBuffer + 1, 4);
  DataIndex = 0;
  ExpectedBytes = 6;
  TransferStatus = SIO_ReadFrame;
  POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL;
  return 'A';

 case 0x21:
 case 0xa1:





  realsize = SIO_format_sectorsize[unit];
  DataBuffer[0] = SIO_FormatDisk(unit, DataBuffer + 1, realsize, SIO_format_sectorcount[unit]);
  DataBuffer[1 + realsize] = SIO_ChkSum(DataBuffer + 1, realsize);
  DataIndex = 0;
  ExpectedBytes = 2 + realsize;
  TransferStatus = SIO_FormatFrame;
  POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL;
  return 'A';
 case 0x22:
 case 0xa2:





  DataBuffer[0] = SIO_FormatDisk(unit, DataBuffer + 1, 128, 1040);
  DataBuffer[1 + 128] = SIO_ChkSum(DataBuffer + 1, 128);
  DataIndex = 0;
  ExpectedBytes = 2 + 128;
  TransferStatus = SIO_FormatFrame;
  POKEY_DELAYED_SERIN_IRQ = SIO_SERIN_INTERVAL;
  return 'A';
 default:






  TransferStatus = SIO_NoFrame;
  return 'E';
 }
}
