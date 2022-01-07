
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UBYTE ;


 int D (int ) ;
 scalar_t__ MEMORY_mem ;
 int PBI_NOT_HANDLED ;
 scalar_t__ PBI_PROTO80_enabled ;
 scalar_t__ PROTO80_MASK ;
 int memcpy (scalar_t__,int ,int) ;
 int printf (char*) ;
 int proto80rom ;

int PBI_PROTO80_D1ffPutByte(UBYTE byte)
{
 int result = 0;
 if (PBI_PROTO80_enabled && byte == PROTO80_MASK) {
  memcpy(MEMORY_mem + 0xd800, proto80rom, 0x800);
  D(printf("PROTO80 rom activated\n"));
 }
 else result = PBI_NOT_HANDLED;
 return result;
}
