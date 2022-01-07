
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int midflag; int ca; int sgc; int eg; int scieb; int scipd; int mcipd; } ;


 int SCSPLOG (char*,int) ;
 TYPE_1__ scsp ;
 int* scsp_ccr ;
 int scsp_midi_in_read () ;
 int scsp_midi_out_read () ;

__attribute__((used)) static u8
scsp_get_b (u32 a)
{
  a &= 0x3F;

  if ((a != 0x09) && (a != 0x21))
    {
      SCSPLOG("r_b scsp : reg %.2X\n", a);
    }


  switch (a)
    {
    case 0x01:
      scsp_ccr[a ^ 3] &= 0x0F;
      break;

    case 0x04:
      return scsp.midflag;

    case 0x05:
      return scsp_midi_in_read();

    case 0x07:
      return scsp_midi_out_read();

    case 0x08:
      return (scsp.ca >> 8);

    case 0x09:
      return (scsp.ca & 0xE0) | (scsp.sgc << 5) | scsp.eg;

    case 0x1E:
      return (scsp.scieb >> 8);

    case 0x1F:
      return scsp.scieb;

    case 0x20:
      return (scsp.scipd >> 8);

    case 0x21:
      return scsp.scipd;

    case 0x2C:
      return (scsp.mcipd >> 8);

    case 0x2D:
      return scsp.mcipd;
    }

  return scsp_ccr[a ^ 3];
}
