
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cycles; } ;
struct TYPE_3__ {int psgBoostNoise; int psg_preamp; } ;


 int SN76489_Config (int ,int ,int ,unsigned int) ;
 TYPE_2__ Z80 ;
 TYPE_1__ config ;
 unsigned int* io_reg ;

void io_gg_write(unsigned int offset, unsigned int data)
{
  switch (offset)
  {
    case 1:
      io_reg[1] = data;
      return;

    case 2:
      io_reg[2] = data;
      return;

    case 3:
      io_reg[3] = data;
      return;

    case 5:
      io_reg[5] = data & 0xF8;
      return;

    case 6:
      io_reg[6] = data;
      SN76489_Config(Z80.cycles, config.psg_preamp, config.psgBoostNoise, data);
      return;

    default:
      return;
  }
}
