
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {int* ctrl; int* stat; int ifctrl; int pt; int wa; int * ram; int ifstat; int ** head; } ;


 int BIT_DECEN ;
 int BIT_DECI ;
 int BIT_DECIEN ;
 int BIT_WRRQ ;
 int EL_INTS ;
 int PCDS_IEN5 ;
 TYPE_2__* Pico_mcd ;
 int SekInterruptS68k (int) ;
 TYPE_1__ cdc ;
 int cdd_read_data (int *) ;
 int elprintf (int ,char*) ;
 int memcpy (int *,int *,int) ;

int cdc_decoder_update(uint8 header[4])
{

  if (cdc.ctrl[0] & BIT_DECEN)
  {

    memcpy(cdc.head[0], header, sizeof(cdc.head[0]));


    cdc.stat[3] = 0x00;


    cdc.ifstat &= ~BIT_DECI;


    if (cdc.ifctrl & BIT_DECIEN)
    {

      if (Pico_mcd->s68k_regs[0x32+1] & PCDS_IEN5)
      {

        elprintf(EL_INTS, "cdc DEC irq 5");
        SekInterruptS68k(5);
      }
    }


    if (cdc.ctrl[0] & BIT_WRRQ)
    {
      uint16 offset;


      cdc.pt += 2352;


      cdc.wa += 2352;


      offset = cdc.pt & 0x3fff;


      memcpy(cdc.ram + offset, header, 4);


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
