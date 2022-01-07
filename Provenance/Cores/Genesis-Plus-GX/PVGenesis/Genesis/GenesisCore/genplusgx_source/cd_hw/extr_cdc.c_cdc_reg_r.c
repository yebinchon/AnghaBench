
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef unsigned char uint8 ;
struct TYPE_20__ {int pending; TYPE_8__* regs; } ;
struct TYPE_18__ {int l; } ;
struct TYPE_19__ {TYPE_7__ byte; } ;
struct TYPE_16__ {unsigned char l; unsigned char h; } ;
struct TYPE_17__ {TYPE_5__ byte; } ;
struct TYPE_14__ {unsigned char l; unsigned char h; } ;
struct TYPE_15__ {TYPE_3__ byte; } ;
struct TYPE_12__ {unsigned char l; unsigned char h; } ;
struct TYPE_13__ {TYPE_1__ byte; } ;
struct TYPE_11__ {unsigned char ifstat; unsigned char** head; size_t* ctrl; unsigned char* stat; int ifctrl; TYPE_6__ wa; TYPE_4__ pt; TYPE_2__ dbc; } ;


 unsigned char BIT_DECI ;
 int BIT_DTEI ;
 int BIT_DTEIEN ;
 size_t BIT_SHDREN ;
 unsigned char BIT_VALST ;
 TYPE_10__ cdc ;
 int s68k_update_irq (int) ;
 TYPE_9__ scd ;

unsigned char cdc_reg_r(void)
{
  switch (scd.regs[0x04>>1].byte.l & 0x0F)
  {
    case 0x01:
      scd.regs[0x04>>1].byte.l = 0x02;
      return cdc.ifstat;

    case 0x02:
      scd.regs[0x04>>1].byte.l = 0x03;
      return cdc.dbc.byte.l;

    case 0x03:
      scd.regs[0x04>>1].byte.l = 0x04;
      return cdc.dbc.byte.h;

    case 0x04:
      scd.regs[0x04>>1].byte.l = 0x05;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][0];

    case 0x05:
      scd.regs[0x04>>1].byte.l = 0x06;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][1];

    case 0x06:
      scd.regs[0x04>>1].byte.l = 0x07;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][2];

    case 0x07:
      scd.regs[0x04>>1].byte.l = 0x08;
      return cdc.head[cdc.ctrl[1] & BIT_SHDREN][3];

    case 0x08:
      scd.regs[0x04>>1].byte.l = 0x09;
      return cdc.pt.byte.l;

    case 0x09:
      scd.regs[0x04>>1].byte.l = 0x0a;
      return cdc.pt.byte.h;

    case 0x0a:
      scd.regs[0x04>>1].byte.l = 0x0b;
      return cdc.wa.byte.l;

    case 0x0b:
      scd.regs[0x04>>1].byte.l = 0x0c;
      return cdc.wa.byte.h;

    case 0x0c:
      scd.regs[0x04>>1].byte.l = 0x0d;
      return cdc.stat[0];

    case 0x0d:
      scd.regs[0x04>>1].byte.l = 0x0e;
      return 0x00;

    case 0x0e:
      scd.regs[0x04>>1].byte.l = 0x0f;
      return cdc.stat[2];

    case 0x0f:
    {
      uint8 data = cdc.stat[3];


      cdc.stat[3] = BIT_VALST;


      cdc.ifstat |= BIT_DECI;
      scd.regs[0x04>>1].byte.l = 0x00;
      return data;
    }

    default:
      return 0xff;
  }
}
