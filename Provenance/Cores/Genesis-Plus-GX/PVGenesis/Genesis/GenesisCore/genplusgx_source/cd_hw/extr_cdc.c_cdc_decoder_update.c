
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_10__ {int w; } ;
struct TYPE_9__ {int w; } ;
struct TYPE_12__ {int* ctrl; int* stat; int ifctrl; scalar_t__ ram; TYPE_4__ pt; TYPE_3__ wa; int ifstat; scalar_t__* head; } ;
struct TYPE_11__ {int pending; TYPE_2__* regs; } ;
struct TYPE_7__ {int l; } ;
struct TYPE_8__ {TYPE_1__ byte; } ;


 int BIT_DECEN ;
 int BIT_DECI ;
 int BIT_DECIEN ;
 int BIT_WRRQ ;
 TYPE_6__ cdc ;
 int cdd_read_data (scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int s68k_update_irq (int) ;
 TYPE_5__ scd ;

int cdc_decoder_update(uint32 header)
{

  if (cdc.ctrl[0] & BIT_DECEN)
  {

    *(uint32 *)(cdc.head[0]) = header;


    cdc.stat[3] = 0x00;


    cdc.ifstat &= ~BIT_DECI;


    if (cdc.ifctrl & BIT_DECIEN)
    {

      scd.pending |= (1 << 5);


      if (scd.regs[0x32>>1].byte.l & 0x20)
      {

        s68k_update_irq((scd.pending & scd.regs[0x32>>1].byte.l) >> 1);
      }
    }


    if (cdc.ctrl[0] & BIT_WRRQ)
    {
      uint16 offset;


      cdc.pt.w += 2352;


      cdc.wa.w += 2352;


      offset = cdc.pt.w & 0x3fff;


      *(uint32 *)(cdc.ram + offset) = header;


      cdd_read_data(cdc.ram + 4 + offset);


      if (offset > (0x4000 - 2048 - 4))
      {

        memcpy(cdc.ram, cdc.ram + 0x4000, offset + 2048 + 4 - 0x4000);
      }


      return 1;
    }
  }


  return 0;
}
