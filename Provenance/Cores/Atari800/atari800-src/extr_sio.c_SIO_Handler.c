
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* UWORD ;
typedef size_t UBYTE ;


 int ANTIC_ypos ;
 scalar_t__ BINLOAD_start_binloading ;
 int CASSETTE_AddGap (int) ;
 int CASSETTE_ReadToMemory (void*,int) ;
 int CASSETTE_WriteFromMemory (void*,int) ;
 int CPU_ClrN ;
 int CPU_SetC ;
 int CPU_SetN ;
 scalar_t__ CPU_regA ;
 int CPU_regPC ;
 int CPU_regY ;
 int DataBuffer ;
 int Log_print (char*,int,int,int,int,int,int,int,int,int,int,int) ;
 int MEMORY_CopyFromMem (void*,int ,int) ;
 int MEMORY_CopyToMem (int ,void*,int) ;
 int MEMORY_dGetByte (int) ;
 void* MEMORY_dGetWordAligned (int) ;
 int MEMORY_dPutByte (int,int) ;
 int POKEY_OFFSET_AUDC1 ;
 int POKEY_OFFSET_AUDC2 ;
 int POKEY_OFFSET_AUDC3 ;
 int POKEY_OFFSET_AUDC4 ;
 int POKEY_PutByte (int ,int ) ;
 int SECTOR_DELAY ;
 size_t SIO_DriveStatus (size_t,int ) ;
 size_t SIO_FormatDisk (size_t,int ,int,int) ;
 int SIO_LAST_READ ;
 int SIO_LAST_WRITE ;
 size_t SIO_MAX_DRIVES ;
 scalar_t__ SIO_OFF ;
 size_t SIO_ReadSector (size_t,int,int ) ;
 size_t SIO_ReadStatusBlock (size_t,int ) ;
 int SIO_SizeOfSector (size_t,int,int*,int *) ;
 size_t SIO_WriteSector (size_t,int,int ) ;
 size_t SIO_WriteStatusBlock (size_t,int ) ;
 scalar_t__* SIO_drive_status ;
 int* SIO_format_sectorcount ;
 int* SIO_format_sectorsize ;
 int SIO_last_drive ;
 int SIO_last_op ;
 int SIO_last_op_time ;
 int delay_counter ;
 int last_ypos ;

void SIO_Handler(void)
{
 int sector = MEMORY_dGetWordAligned(0x30a);
 UBYTE unit = (MEMORY_dGetByte(0x300) + MEMORY_dGetByte(0x301) + 0xff ) - 0x31;
 UBYTE result = 0x00;
 UWORD data = MEMORY_dGetWordAligned(0x304);
 int length = MEMORY_dGetWordAligned(0x308);
 int realsize = 0;
 int cmd = MEMORY_dGetByte(0x302);

 if ((unsigned int)MEMORY_dGetByte(0x300) + (unsigned int)MEMORY_dGetByte(0x301) > 0xff) {

  unit++;
 }




 if (MEMORY_dGetByte(0x300) != 0x60 && unit < SIO_MAX_DRIVES && (SIO_drive_status[unit] != SIO_OFF || BINLOAD_start_binloading)) {






  switch (cmd) {
  case 0x4e:
   if (12 == length) {
    result = SIO_ReadStatusBlock(unit, DataBuffer);
    if (result == 'C')
     MEMORY_CopyToMem(DataBuffer, data, 12);
   }
   else
    result = 'E';
   break;
  case 0x4f:
   if (12 == length) {
    MEMORY_CopyFromMem(data, DataBuffer, 12);
    result = SIO_WriteStatusBlock(unit, DataBuffer);
   }
   else
    result = 'E';
   break;
  case 0x50:
  case 0x57:
  case 0xD0:
  case 0xD7:
   SIO_SizeOfSector(unit, sector, &realsize, ((void*)0));
   if (realsize == length) {
    MEMORY_CopyFromMem(data, DataBuffer, realsize);
    result = SIO_WriteSector(unit, sector, DataBuffer);
   }
   else
    result = 'E';
   break;
  case 0x52:
  case 0xD2:

   if (sector == 1) {
    if (delay_counter > 0) {
     if (last_ypos != ANTIC_ypos) {
      last_ypos = ANTIC_ypos;
      delay_counter--;
     }
     CPU_regPC = 0xe459;
     return;
    }
    delay_counter = SECTOR_DELAY;
   }
   else {
    delay_counter = 0;
   }

   SIO_SizeOfSector(unit, sector, &realsize, ((void*)0));
   if (realsize == length) {
    result = SIO_ReadSector(unit, sector, DataBuffer);
    if (result == 'C')
     MEMORY_CopyToMem(DataBuffer, data, realsize);
   }
   else
    result = 'E';
   break;
  case 0x53:
   if (4 == length) {
    result = SIO_DriveStatus(unit, DataBuffer);
    if (result == 'C') {
     MEMORY_CopyToMem(DataBuffer, data, 4);
    }
   }
   else
    result = 'E';
   break;

  case 0x21:
  case 0xA1:
   realsize = SIO_format_sectorsize[unit];
   if (realsize == length) {
    result = SIO_FormatDisk(unit, DataBuffer, realsize, SIO_format_sectorcount[unit]);
    if (result == 'C')
     MEMORY_CopyToMem(DataBuffer, data, realsize);
   }
   else {

    SIO_FormatDisk(unit, DataBuffer, realsize, SIO_format_sectorcount[unit]);
    result = 'E';
   }
   break;
  case 0x22:
  case 0xA2:
   realsize = 128;
   if (realsize == length) {
    result = SIO_FormatDisk(unit, DataBuffer, 128, 1040);
    if (result == 'C')
     MEMORY_CopyToMem(DataBuffer, data, realsize);
   }
   else {
    SIO_FormatDisk(unit, DataBuffer, 128, 1040);
    result = 'E';
   }
   break;
  default:
   result = 'N';
  }
 }

 else if (MEMORY_dGetByte(0x300) == 0x60) {
  UBYTE gaps = MEMORY_dGetByte(0x30b);
  switch (cmd){
  case 0x52:
   SIO_last_op = SIO_LAST_READ;
   SIO_last_drive = 0x61;
   SIO_last_op_time = 0x10;

   CASSETTE_AddGap(gaps == 0 ? 2000 : 160);

   if (CASSETTE_ReadToMemory(data, length))
    result = 'C';
   else
    result = 'E';
   break;
  case 0x57:
   SIO_last_op = SIO_LAST_WRITE;
   SIO_last_drive = 0x61;
   SIO_last_op_time = 0x10;

   CASSETTE_AddGap(gaps == 0 ? 3000 : 260);

   if (CASSETTE_WriteFromMemory(data, length))
    result = 'C';
   else
    result = 'E';
   break;
  default:
   result = 'N';
  }
 }

 switch (result) {
 case 0x00:
  CPU_regY = 138;
  CPU_SetN;
  break;
 case 'A':
 case 'C':
  CPU_regY = 1;
  CPU_ClrN;
  break;
 case 'N':
  CPU_regY = 144;
  CPU_SetN;
  break;
 case 'E':
 default:
  CPU_regY = 146;
  CPU_SetN;
  break;
 }
 CPU_regA = 0;
 MEMORY_dPutByte(0x0303, CPU_regY);
 MEMORY_dPutByte(0x42,0);
 CPU_SetC;
 POKEY_PutByte(POKEY_OFFSET_AUDC1, 0);
 POKEY_PutByte(POKEY_OFFSET_AUDC2, 0);
 POKEY_PutByte(POKEY_OFFSET_AUDC3, 0);
 POKEY_PutByte(POKEY_OFFSET_AUDC4, 0);
}
