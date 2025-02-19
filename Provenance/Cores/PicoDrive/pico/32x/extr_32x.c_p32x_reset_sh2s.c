
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {unsigned int romsize; scalar_t__ rom; } ;
struct TYPE_10__ {unsigned short* regs; } ;
struct TYPE_9__ {scalar_t__ sdram; } ;
struct TYPE_8__ {int m68krcycles_done; } ;


 int EL_32X ;
 int EL_ANOMALY ;
 int EL_STATUS ;
 int HWSWAP (unsigned int) ;
 TYPE_7__ Pico ;
 TYPE_6__ Pico32x ;
 TYPE_5__* Pico32xMem ;
 int SekCyclesDone () ;
 int elprintf (int,char*,...) ;
 int memcpy (scalar_t__,scalar_t__,unsigned int) ;
 TYPE_1__ msh2 ;
 int * p32x_bios_m ;
 int * p32x_bios_s ;
 int sh2_peripheral_reset (TYPE_1__*) ;
 int sh2_reset (TYPE_1__*) ;
 int sh2_set_gbr (int,int) ;
 int sh2_set_vbr (int,unsigned int) ;
 TYPE_1__ ssh2 ;

void p32x_reset_sh2s(void)
{
  elprintf(EL_32X, "sh2 reset");

  sh2_reset(&msh2);
  sh2_reset(&ssh2);
  sh2_peripheral_reset(&msh2);
  sh2_peripheral_reset(&ssh2);



  if (p32x_bios_m == ((void*)0)) {
    unsigned int idl_src, idl_dst, idl_size;
    unsigned int vbr;


    idl_src = HWSWAP(*(unsigned int *)(Pico.rom + 0x3d4)) & ~0xf0000000;
    idl_dst = HWSWAP(*(unsigned int *)(Pico.rom + 0x3d8)) & ~0xf0000000;
    idl_size= HWSWAP(*(unsigned int *)(Pico.rom + 0x3dc));
    if (idl_size > Pico.romsize || idl_src + idl_size > Pico.romsize ||
        idl_size > 0x40000 || idl_dst + idl_size > 0x40000 || (idl_src & 3) || (idl_dst & 3)) {
      elprintf(EL_STATUS|EL_ANOMALY, "32x: invalid initial data ptrs: %06x -> %06x, %06x",
        idl_src, idl_dst, idl_size);
    }
    else
      memcpy(Pico32xMem->sdram + idl_dst, Pico.rom + idl_src, idl_size);


    vbr = HWSWAP(*(unsigned int *)(Pico.rom + 0x3e8));
    sh2_set_gbr(0, 0x20004000);
    sh2_set_vbr(0, vbr);


    Pico32x.regs[0x28 / 2] = *(unsigned short *)(Pico.rom + 0x18e);

  }


  if (p32x_bios_s == ((void*)0)) {
    unsigned int vbr;


    vbr = HWSWAP(*(unsigned int *)(Pico.rom + 0x3ec));
    sh2_set_gbr(1, 0x20004000);
    sh2_set_vbr(1, vbr);

  }

  msh2.m68krcycles_done = ssh2.m68krcycles_done = SekCyclesDone();
}
