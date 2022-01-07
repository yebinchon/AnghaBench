
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;


 int D (int ) ;
 scalar_t__ DISK_MASK ;
 scalar_t__ MEMORY_mem ;
 scalar_t__ MODEM_MASK ;
 int PBI_NOT_HANDLED ;
 scalar_t__ VOICE_MASK ;
 scalar_t__ diskrom ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int printf (char*) ;
 scalar_t__ voicerom ;
 scalar_t__ xld_d_enabled ;

int PBI_XLD_D1ffPutByte(UBYTE byte)
{
 int result = 0;
 if (xld_d_enabled && byte == DISK_MASK) {
  memcpy(MEMORY_mem + 0xd800, diskrom, 0x800);
  D(printf("DISK rom activated\n"));
 }
 else if (byte == MODEM_MASK) {
  memcpy(MEMORY_mem + 0xd800, voicerom + 0x800, 0x800);
  D(printf("MODEM rom activated\n"));
 }
 else if (byte == VOICE_MASK) {
  memcpy(MEMORY_mem + 0xd800, voicerom, 0x800);
  D(printf("VOICE rom activated\n"));
 }
 else result = PBI_NOT_HANDLED;
 return result;
}
