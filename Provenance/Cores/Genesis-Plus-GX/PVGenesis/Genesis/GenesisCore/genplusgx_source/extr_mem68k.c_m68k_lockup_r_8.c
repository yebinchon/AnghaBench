
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int address ;
struct TYPE_6__ {int force_dtack; } ;
struct TYPE_5__ {unsigned int pc; TYPE_1__* memory_map; int cycle_end; int cycles; } ;
struct TYPE_4__ {int base; } ;


 int M68K_REG_PC ;
 unsigned int READ_BYTE (int ,int ) ;
 TYPE_3__ config ;
 int error (char*,unsigned int,char*) ;
 TYPE_2__ m68k ;
 char* m68k_get_reg (int ) ;
 int m68k_pulse_halt () ;

unsigned int m68k_lockup_r_8 (unsigned int address)
{



  if (!config.force_dtack)
  {
    m68k_pulse_halt();
    m68k.cycles = m68k.cycle_end;
  }
  address = m68k.pc | (address & 1);
  return READ_BYTE(m68k.memory_map[((address)>>16)&0xff].base, (address) & 0xffff);
}
