
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {TYPE_1__* gr; } ;
struct TYPE_6__ {TYPE_2__ ssp1601; } ;
struct TYPE_4__ {int h; } ;


 int EL_SVP ;
 int PicoRead16_io (int) ;
 size_t SSP_PM0 ;
 size_t SSP_XST ;
 int SekPc ;
 int elprintf (int ,char*,...) ;
 int realsize ;
 TYPE_3__* svp ;

__attribute__((used)) static u32 PicoRead16_svpr(u32 a)
{
  u32 d = 0;


  if ((a & ~0x0f) == 0xa15000) {
    switch (a & 0xf) {
      case 0:
      case 2:
        d = svp->ssp1601.gr[SSP_XST].h;
        break;

      case 4:
        d = svp->ssp1601.gr[SSP_PM0].h;
        svp->ssp1601.gr[SSP_PM0].h &= ~1;
 break;
    }
    return d;
  }




  return PicoRead16_io(a);
}
