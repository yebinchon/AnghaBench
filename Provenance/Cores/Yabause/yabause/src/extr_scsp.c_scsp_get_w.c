
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int midflag; int ca; int sgc; int eg; int timasd; int timbsd; int timcsd; int scieb; int scipd; int mcipd; } ;


 int SCSPLOG (char*,int) ;
 TYPE_1__ scsp ;
 int * scsp_ccr ;
 int scsp_midi_in_read () ;
 int scsp_midi_out_read () ;

__attribute__((used)) static u16
scsp_get_w (u32 a)
{
  a &= 0x3E;

  if ((a != 0x20) && (a != 0x08))
    {
      SCSPLOG("r_w scsp : reg %.2X\n", a * 2);
    }

  switch (a)
    {
    case 0x00:
      *(u16 *)&scsp_ccr[a ^ 2] &= 0xFF0F;
      break;

    case 0x04:
      return (scsp.midflag << 8) | scsp_midi_in_read();

    case 0x06:
      return scsp_midi_out_read();

    case 0x08:
      return (scsp.ca & 0x780) | (scsp.sgc << 5) | scsp.eg;

    case 0x18:
      return (scsp.timasd << 8);

    case 0x1A:
      return (scsp.timbsd << 8);

    case 0x1C:
      return (scsp.timcsd << 8);

    case 0x1E:
      return scsp.scieb;

    case 0x20:
      return scsp.scipd;

    case 0x2C:
      return scsp.mcipd;
    }

  return *(u16 *)&scsp_ccr[a ^ 2];
}
