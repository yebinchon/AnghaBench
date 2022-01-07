
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned char uint8 ;
struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {unsigned char ifstat; int dbc; unsigned char** head; size_t* ctrl; int pt; int wa; unsigned char* stat; int ifctrl; } ;


 unsigned char BIT_DECI ;
 int BIT_DTEI ;
 int BIT_DTEIEN ;
 size_t BIT_SHDREN ;
 unsigned char BIT_VALST ;
 TYPE_2__* Pico_mcd ;
 int SekInterruptClearS68k (int) ;
 TYPE_1__ cdc ;

unsigned char cdc_reg_r(void)
{
  switch (Pico_mcd->s68k_regs[0x04+1] & 0x0F)
  {
    case 0x01:
      Pico_mcd->s68k_regs[0x04+1] = 0x02;
      return cdc.ifstat;

    case 0x02:
      Pico_mcd->s68k_regs[0x04+1] = 0x03;
      return cdc.dbc & 0xff;

    case 0x03:
      Pico_mcd->s68k_regs[0x04+1] = 0x04;
      return (cdc.dbc >> 8) & 0xff;

    case 0x04:
      Pico_mcd->s68k_regs[0x04+1] = 0x05;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][0];

    case 0x05:
      Pico_mcd->s68k_regs[0x04+1] = 0x06;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][1];

    case 0x06:
      Pico_mcd->s68k_regs[0x04+1] = 0x07;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][2];

    case 0x07:
      Pico_mcd->s68k_regs[0x04+1] = 0x08;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][3];

    case 0x08:
      Pico_mcd->s68k_regs[0x04+1] = 0x09;
      return cdc.pt & 0xff;

    case 0x09:
      Pico_mcd->s68k_regs[0x04+1] = 0x0a;
      return (cdc.pt >> 8) & 0xff;

    case 0x0a:
      Pico_mcd->s68k_regs[0x04+1] = 0x0b;
      return cdc.wa & 0xff;

    case 0x0b:
      Pico_mcd->s68k_regs[0x04+1] = 0x0c;
      return (cdc.wa >> 8) & 0xff;

    case 0x0c:
      Pico_mcd->s68k_regs[0x04+1] = 0x0d;
      return cdc.stat[0];

    case 0x0d:
      Pico_mcd->s68k_regs[0x04+1] = 0x0e;
      return 0x00;

    case 0x0e:
      Pico_mcd->s68k_regs[0x04+1] = 0x0f;
      return cdc.stat[2];

    case 0x0f:
    {
      uint8 data = cdc.stat[3];


      cdc.stat[3] = BIT_VALST;


      cdc.ifstat |= BIT_DECI;
      Pico_mcd->s68k_regs[0x04+1] = 0x00;
      return data;
    }

    default:
      return 0xff;
  }
}
