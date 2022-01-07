
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
 int memcpy (scalar_t__,scalar_t__,int) ;
 int memset (scalar_t__,int,int) ;
 scalar_t__ mio_ram ;
 int mio_ram_bank_offset ;
 int mio_ram_enabled ;
 scalar_t__ mio_rom ;
 int mio_rom_bank ;
 scalar_t__ mio_scsi_enabled ;
 int printf (char*,...) ;

void PBI_MIO_D1PutByte(UWORD addr, UBYTE byte)
{
 int old_mio_ram_bank_offset = mio_ram_bank_offset;
 int old_mio_ram_enabled = mio_ram_enabled;
 int offset_changed;
 int ram_enabled_changed;
 addr &= 0xffe3;
 if (addr == 0xd1e0) {

  mio_ram_bank_offset &= 0xf0000;
  mio_ram_bank_offset |= (byte << 8);
 }
 else if (addr == 0xd1e1) {
  if (mio_scsi_enabled) {
   PBI_SCSI_PutByte(byte^0xff);
   PBI_SCSI_PutACK(1);
   PBI_SCSI_PutACK(0);
  }
 }
 else if (addr == 0xd1e2) {

  mio_ram_bank_offset &= 0x0ffff;
  mio_ram_bank_offset |= ( (byte & 0x0f) << 16);
  mio_ram_enabled = (byte & 0x20);
  if (mio_scsi_enabled) PBI_SCSI_PutSEL(!!(byte & 0x10));
 }
 else if (addr == 0xd1e3) {

  if (mio_rom_bank != byte){
   int offset = -1;
   if (byte == 4) offset = 0x2000;
   else if (byte == 8) offset = 0x2800;
   else if (byte == 0x10) offset = 0x3000;
   else if (byte == 0x20) offset = 0x3800;
   if (offset != -1) {
    memcpy(MEMORY_mem + 0xd800, mio_rom+offset, 0x800);
    D(printf("mio bank:%2x activated\n", byte));
   }else{
    memcpy(MEMORY_mem + 0xd800, MEMORY_os + 0x1800, 0x800);
    D(printf("Floating point rom activated\n"));

   }
   mio_rom_bank = byte;
  }

 }
 offset_changed = (old_mio_ram_bank_offset != mio_ram_bank_offset);
 ram_enabled_changed = (old_mio_ram_enabled != mio_ram_enabled);
 if (mio_ram_enabled && ram_enabled_changed) {

  memcpy(MEMORY_mem + 0xd600, mio_ram + mio_ram_bank_offset, 0x100);
 } else if (mio_ram_enabled && offset_changed) {

  memcpy(mio_ram + old_mio_ram_bank_offset,MEMORY_mem + 0xd600, 0x100);
  memcpy(MEMORY_mem + 0xd600, mio_ram + mio_ram_bank_offset, 0x100);
 } else if (!mio_ram_enabled && ram_enabled_changed) {

  memcpy(mio_ram + old_mio_ram_bank_offset, MEMORY_mem + 0xd600, 0x100);
  memset(MEMORY_mem + 0xd600, 0xff, 0x100);
 }
 D(printf("MIO Write addr:%4x byte:%2x, cpu:%4x\n", addr, byte,CPU_remember_PC[(CPU_remember_PC_curpos-1)%CPU_REMEMBER_PC_STEPS]));
}
