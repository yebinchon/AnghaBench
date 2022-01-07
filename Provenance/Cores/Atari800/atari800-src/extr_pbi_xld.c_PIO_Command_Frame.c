
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef char UBYTE ;


 int* CommandFrame ;
 int* DataBuffer ;
 int DataIndex ;
 int ExpectedBytes ;
 int Log_print (char*,...) ;
 int PIO_FormatFrame ;
 int PIO_NoFrame ;
 int PIO_ReadFrame ;
 int PIO_WriteFrame ;
 int SIO_ChkSum (int ,int) ;
 int SIO_DriveStatus (int,int ) ;
 int SIO_FormatDisk (int,int ,int,int) ;
 int SIO_LAST_READ ;
 int SIO_LAST_WRITE ;
 int SIO_MAX_DRIVES ;
 int SIO_NO_DISK ;
 int SIO_OFF ;
 int SIO_ReadSector (int,int,int ) ;
 int SIO_ReadStatusBlock (int,int ) ;
 int SIO_SizeOfSector (char,int,int*,int *) ;
 int * SIO_drive_status ;
 int* SIO_format_sectorcount ;
 int* SIO_format_sectorsize ;
 int SIO_last_drive ;
 int SIO_last_op ;
 int SIO_last_op_time ;
 int TransferStatus ;

__attribute__((used)) static UBYTE PIO_Command_Frame(void)
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
  TransferStatus = PIO_NoFrame;
  return 0;
 }
 switch (CommandFrame[1]) {
 case 0x01:
  Log_print("PIO DISK: Set large mode (unimplemented)");
  return 'E';
 case 0x02:
  Log_print("PIO DISK: Set small mode (unimplemented)");
  return 'E';
 case 0x23:
  Log_print("PIO DISK: Drive Diagnostic In (unimplemented)");
  return 'E';
 case 0x24:
  Log_print("PIO DISK: Drive Diagnostic Out (unimplemented)");
  return 'E';
 case 0x4e:





  DataBuffer[0] = SIO_ReadStatusBlock(unit, DataBuffer + 1);
  DataBuffer[13] = SIO_ChkSum(DataBuffer + 1, 12);
  DataIndex = 0;
  ExpectedBytes = 14;
  TransferStatus = PIO_ReadFrame;

  return 'A';
 case 0x4f:





  ExpectedBytes = 13;
  DataIndex = 0;
  TransferStatus = PIO_WriteFrame;
  return 'A';
 case 0x50:
 case 0x57:





  SIO_SizeOfSector((UBYTE) unit, sector, &realsize, ((void*)0));
  ExpectedBytes = realsize + 1;
  DataIndex = 0;
  TransferStatus = PIO_WriteFrame;
  SIO_last_op = SIO_LAST_WRITE;
  SIO_last_op_time = 10;
  SIO_last_drive = unit + 1;
  return 'A';
 case 0x52:





  SIO_SizeOfSector((UBYTE) unit, sector, &realsize, ((void*)0));
  DataBuffer[0] = SIO_ReadSector(unit, sector, DataBuffer + 1);
  DataBuffer[1 + realsize] = SIO_ChkSum(DataBuffer + 1, realsize);
  DataIndex = 0;
  ExpectedBytes = 2 + realsize;
  TransferStatus = PIO_ReadFrame;
  SIO_last_op = SIO_LAST_READ;
  SIO_last_op_time = 10;
  SIO_last_drive = unit + 1;
  return 'A';
 case 0x53:
  DataBuffer[0] = SIO_DriveStatus(unit, DataBuffer + 1);
  DataBuffer[2] = 0xff;
  if (SIO_drive_status[unit]==SIO_NO_DISK || SIO_drive_status[unit]==SIO_OFF){

   DataBuffer[2]=0x7f;
  }
  DataBuffer[1 + 4] = SIO_ChkSum(DataBuffer + 1, 4);
  DataIndex = 0;
  ExpectedBytes = 6;
  TransferStatus = PIO_ReadFrame;

  return 'A';
 case 0x21:





  realsize = SIO_format_sectorsize[unit];
  DataBuffer[0] = SIO_FormatDisk(unit, DataBuffer + 1, realsize, SIO_format_sectorcount[unit]);
  DataBuffer[1 + realsize] = SIO_ChkSum(DataBuffer + 1, realsize);
  DataIndex = 0;
  ExpectedBytes = 2 + realsize;
  TransferStatus = PIO_FormatFrame;

  return 'A';
 case 0x22:





  DataBuffer[0] = SIO_FormatDisk(unit, DataBuffer + 1, 128, 1040);
  DataBuffer[1 + 128] = SIO_ChkSum(DataBuffer + 1, 128);
  DataIndex = 0;
  ExpectedBytes = 2 + 128;
  TransferStatus = PIO_FormatFrame;

  return 'A';





 case 0xb1:
  Log_print("PIO DISK: Internal Command 0xb1 (unimplemented)");
  return 'E';
 case 0xb2:
  Log_print("PIO DISK: Internal Command 0xb2 (unimplemented)");
  return 'E';


 default:






  TransferStatus = PIO_NoFrame;
  return 'E';
 }
}
