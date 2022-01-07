
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* s68k_regs; } ;
struct TYPE_3__ {int ifstat; unsigned char ifctrl; int dbc; int dac; int wa; unsigned char* stat; unsigned char* ctrl; int pt; int dma_w; } ;


 unsigned char BIT_AUTORQ ;
 unsigned char BIT_DECEN ;
 int BIT_DECI ;
 unsigned char BIT_DECIEN ;
 unsigned char BIT_DOUTEN ;
 int BIT_DTBSY ;
 int BIT_DTEI ;
 unsigned char BIT_DTEIEN ;
 int BIT_DTEN ;
 unsigned char BIT_FORMRQ ;
 unsigned char BIT_MODRQ ;
 int EL_ANOMALY ;
 int EL_INTS ;
 int EL_STATUS ;
 int PCDS_IEN5 ;
 int PCD_EVENT_DMA ;
 TYPE_2__* Pico_mcd ;
 int SekInterruptClearS68k (int) ;
 int SekInterruptS68k (int) ;
 TYPE_1__ cdc ;
 int cdc_reset () ;
 int elprintf (int ,char*,...) ;
 int pcd_event_schedule_s68k (int ,int) ;
 int pcm_ram_dma_w ;
 int prg_ram_dma_w ;
 int word_ram_0_dma_w ;
 int word_ram_1_dma_w ;
 int word_ram_2M_dma_w ;

void cdc_reg_w(unsigned char data)
{



  switch (Pico_mcd->s68k_regs[0x04+1] & 0x0F)
  {
    case 0x01:
    {

      if (((data & BIT_DTEIEN) && !(cdc.ifstat & BIT_DTEI)) ||
          ((data & BIT_DECIEN) && !(cdc.ifstat & BIT_DECI)))
      {

        if (Pico_mcd->s68k_regs[0x32+1] & PCDS_IEN5)
        {

          elprintf(EL_INTS, "cdc pending irq 5");
          SekInterruptS68k(5);
        }
      }
      else
      {

        SekInterruptClearS68k(5);
      }


      if (!(data & BIT_DOUTEN))
      {

        cdc.ifstat |= (BIT_DTBSY | BIT_DTEN);
      }

      cdc.ifctrl = data;
      Pico_mcd->s68k_regs[0x04+1] = 0x02;
      break;
    }

    case 0x02:
      cdc.dbc &= 0xff00;
      cdc.dbc |= data;
      Pico_mcd->s68k_regs[0x04+1] = 0x03;
      break;

    case 0x03:
      cdc.dbc &= 0x00ff;
      cdc.dbc |= data << 8;
      Pico_mcd->s68k_regs[0x04+1] = 0x04;
      break;

    case 0x04:
      cdc.dac &= 0xff00;
      cdc.dac |= data;
      Pico_mcd->s68k_regs[0x04+1] = 0x05;
      break;

    case 0x05:
      cdc.dac &= 0x00ff;
      cdc.dac |= data << 8;
      Pico_mcd->s68k_regs[0x04+1] = 0x06;
      break;

    case 0x06:
    {

      if (cdc.ifctrl & BIT_DOUTEN)
      {

        cdc.ifstat &= ~BIT_DTBSY;


        cdc.dbc &= 0x0fff;


        Pico_mcd->s68k_regs[0x04+0] &= 0x07;

        cdc.dma_w = 0;


        switch (Pico_mcd->s68k_regs[0x04+0] & 0x07)
        {
          case 2:
          case 3:
          {

            cdc.ifstat &= ~BIT_DTEN;


            Pico_mcd->s68k_regs[0x04+0] |= 0x40;
            break;
          }

          case 4:
          {
            cdc.dma_w = pcm_ram_dma_w;
            break;
          }

          case 5:
          {
            cdc.dma_w = prg_ram_dma_w;
            break;
          }

          case 7:
          {

            if (Pico_mcd->s68k_regs[0x02+1] & 0x04)
            {

              if (Pico_mcd->s68k_regs[0x02+1] & 0x01)
              {

                cdc.dma_w = word_ram_0_dma_w;
              }
              else
              {

                cdc.dma_w = word_ram_1_dma_w;
              }
            }
            else
            {

              if (Pico_mcd->s68k_regs[0x02+1] & 0x02)
              {

                cdc.dma_w = word_ram_2M_dma_w;
              }
            }
            break;
          }

          default:
          {
            elprintf(EL_ANOMALY, "invalid CDC tranfer destination (%d)",
              Pico_mcd->s68k_regs[0x04+0] & 0x07);
            break;
          }
        }

        if (cdc.dma_w)
          pcd_event_schedule_s68k(PCD_EVENT_DMA, cdc.dbc / 2);
      }

      Pico_mcd->s68k_regs[0x04+1] = 0x07;
      break;
    }

    case 0x07:
    {

      cdc.ifstat |= BIT_DTEI;


      cdc.dbc &= 0x0fff;
      Pico_mcd->s68k_regs[0x04+1] = 0x08;
      break;
    }

    case 0x08:
      cdc.wa &= 0xff00;
      cdc.wa |= data;
      Pico_mcd->s68k_regs[0x04+1] = 0x09;
      break;

    case 0x09:
      cdc.wa &= 0x00ff;
      cdc.wa |= data << 8;
      Pico_mcd->s68k_regs[0x04+1] = 0x0a;
      break;

    case 0x0a:
    {

      cdc.stat[0] = data & BIT_DECEN;


      if (data & BIT_AUTORQ)
      {

        cdc.stat[2] = cdc.ctrl[1] & BIT_MODRQ;
      }
      else
      {

        cdc.stat[2] = cdc.ctrl[1] & (BIT_MODRQ | BIT_FORMRQ);
      }

      cdc.ctrl[0] = data;
      Pico_mcd->s68k_regs[0x04+1] = 0x0b;
      break;
    }

    case 0x0b:
    {

      if (cdc.ctrl[0] & BIT_AUTORQ)
      {

        cdc.stat[2] = data & BIT_MODRQ;
      }
      else
      {

        cdc.stat[2] = data & (BIT_MODRQ | BIT_FORMRQ);
      }

      cdc.ctrl[1] = data;
      Pico_mcd->s68k_regs[0x04+1] = 0x0c;
      break;
    }

    case 0x0c:
      cdc.pt &= 0xff00;
      cdc.pt |= data;
      Pico_mcd->s68k_regs[0x04+1] = 0x0d;
      break;

    case 0x0d:
      cdc.pt &= 0x00ff;
      cdc.pt |= data << 8;
      Pico_mcd->s68k_regs[0x04+1] = 0x0e;
      break;

    case 0x0e:
      Pico_mcd->s68k_regs[0x04+1] = 0x0f;
      break;

    case 0x0f:
      cdc_reset();
      break;

    default:
      break;
  }
}
