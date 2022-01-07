
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* memregs ;

__attribute__((used)) static int in_gp2x_get_mmsp2_bits(void)
{
 int value;
 value = memregs[0x1198>>1] & 0xff;
 if (value == 0xFD) value = 0xFA;
 if (value == 0xF7) value = 0xEB;
 if (value == 0xDF) value = 0xAF;
 if (value == 0x7F) value = 0xBE;
 value |= memregs[0x1184>>1] & 0xFF00;
 value |= memregs[0x1186>>1] << 16;
 value = ~value & 0x08c0ff55;

 return value;
}
