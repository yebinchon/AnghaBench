
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int address ;
struct TYPE_4__ {unsigned int pc; TYPE_1__* memory_map; } ;
struct TYPE_3__ {int base; } ;


 int M68K_REG_PC ;
 unsigned int READ_BYTE (int ,int ) ;
 int error (char*,unsigned int,char*) ;
 TYPE_2__ m68k ;
 char* m68k_get_reg (int ) ;

unsigned int m68k_read_bus_8(unsigned int address)
{



  address = m68k.pc | (address & 1);
  return READ_BYTE(m68k.memory_map[((address)>>16)&0xff].base, (address) & 0xffff);
}
