
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8 ;
struct TYPE_6__ {unsigned int*** lut_prio; } ;
struct TYPE_5__ {int * word_ram; TYPE_1__* regs; } ;
struct TYPE_4__ {int w; } ;


 size_t READ_BYTE (int ,unsigned int) ;
 int WRITE_BYTE (int ,unsigned int,unsigned int) ;
 TYPE_3__ gfx ;
 TYPE_2__ scd ;

void dot_ram_1_write16(unsigned int address, unsigned int data)
{
  uint8 prev;
  address = (address >> 1) & 0x1ffff;
  prev = READ_BYTE(scd.word_ram[1], address);
  data = (data & 0x0f) | ((data >> 4) & 0xf0);
  data = gfx.lut_prio[(scd.regs[0x02>>1].w >> 3) & 0x03][prev][data];
  WRITE_BYTE(scd.word_ram[1], address, data);
}
