
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z80_bank68k; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 int EL_Z80BNK ;
 TYPE_2__ Pico ;
 int elprintf (int ,char*,unsigned int,unsigned char) ;
 int m68k_write8 (unsigned int,unsigned char) ;

__attribute__((used)) static void z80_md_bank_write(unsigned int a, unsigned char data)
{
  unsigned int addr68k;

  addr68k = Pico.m.z80_bank68k << 15;
  addr68k += a & 0x7fff;

  elprintf(EL_Z80BNK, "z80->68k w8 [%06x] %02x", addr68k, data);
  m68k_write8(addr68k, data);
}
