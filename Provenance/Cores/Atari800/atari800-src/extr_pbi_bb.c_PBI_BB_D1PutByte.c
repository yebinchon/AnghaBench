
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int CPU_REMEMBER_PC_STEPS ;
 int* CPU_remember_PC ;
 int CPU_remember_PC_curpos ;
 int D (int ) ;
 scalar_t__ MEMORY_mem ;
 scalar_t__ MEMORY_os ;
 int PBI_SCSI_PutACK (int) ;
 int PBI_SCSI_PutByte (int) ;
 int PBI_SCSI_PutSEL (int) ;
 int bb_PCR ;
 scalar_t__ bb_ram ;
 int bb_ram_bank_offset ;
 scalar_t__ bb_rom ;
 int bb_rom_bank ;
 int bb_rom_high_bit ;
 int bb_rom_size ;
 scalar_t__ bb_scsi_enabled ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int printf (char*,...) ;

void PBI_BB_D1PutByte(UWORD addr, UBYTE byte)
{
 D(printf("BB Write addr:%4x byte:%2x, cpu:%4x\n", addr, byte, CPU_remember_PC[(CPU_remember_PC_curpos-1)%CPU_REMEMBER_PC_STEPS]));
 if (addr == 0xd170) {
  if (bb_scsi_enabled) PBI_SCSI_PutSEL(!(byte&0x04));
 }
 else if (addr == 0xd171) {
  if (bb_scsi_enabled) {
   PBI_SCSI_PutByte(byte);
   if (((bb_PCR & 0x0e)>>1) == 0x04) {

    PBI_SCSI_PutACK(1);
    PBI_SCSI_PutACK(0);
   }
  }
 }
 else if (addr == 0xd17c) {
  bb_PCR = byte;
  if (((bb_PCR & 0x0e)>>1) == 0x06) {

   if (bb_scsi_enabled) PBI_SCSI_PutACK(1);
  }
  else if (((bb_PCR & 0x0e)>>1) == 0x07) {

   if (bb_scsi_enabled) PBI_SCSI_PutACK(0);
  }
 }
 else if (addr == 0xd1bc) {


  memcpy(bb_ram+bb_ram_bank_offset,MEMORY_mem + 0xd600,0x100);
  bb_ram_bank_offset = (byte << 8);
  memcpy(MEMORY_mem + 0xd600, bb_ram+bb_ram_bank_offset, 0x100);
 }
 else if (addr == 0xd1be) {

  if (bb_rom_high_bit != ((byte & 0x04) << 2) && bb_rom_size == 0x10000) {

   bb_rom_high_bit = ((byte & 0x04) << 2);
   if (bb_rom_bank > 0 && bb_rom_bank < 8) {
     memcpy(MEMORY_mem + 0xd800, bb_rom + (bb_rom_bank + bb_rom_high_bit)*0x800, 0x800);
     D(printf("black box bank:%2x activated\n", bb_rom_bank+bb_rom_high_bit));
   }
  }
 }
 else if ((addr & 0xffc0) == 0xd1c0) {

  if (bb_rom_bank != byte) {

   int offset = -1;
   if (bb_rom_size == 0x4000) {
    if (byte >= 8 && byte <= 0x0f) offset = (byte - 8)*0x800;
    else if (byte > 0 && byte < 0x08) offset = byte*0x800;
   }
   else {
    if (byte > 0 && byte < 0x10) offset = (byte + bb_rom_high_bit)*0x800;
   }

   if (offset != -1) {
     memcpy(MEMORY_mem + 0xd800, bb_rom + offset, 0x800);
     D(printf("black box bank:%2x activated\n", byte + bb_rom_high_bit));
   }
   else {
     memcpy(MEMORY_mem + 0xd800, MEMORY_os + 0x1800, 0x800);
     if (byte != 0) D(printf("d1ff ERROR: byte=%2x\n", byte));
     D(printf("Floating point rom activated\n"));
   }
   bb_rom_bank = byte;
  }
 }
}
