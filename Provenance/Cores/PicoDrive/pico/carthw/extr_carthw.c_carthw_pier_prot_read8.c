
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* rom; } ;


 int EL_STATUS ;
 int EL_UIO ;
 TYPE_1__ Pico ;
 int SekPc ;
 int carthw_pier_statef () ;
 int elprintf (int ,char*,int,...) ;
 scalar_t__ pier_dump_prot ;

__attribute__((used)) static u32 carthw_pier_prot_read8(u32 a)
{


  if (pier_dump_prot > 0)
    pier_dump_prot--;
  if (pier_dump_prot == 0) {
    carthw_pier_statef();
    elprintf(EL_STATUS, "prot off on r8 @%06x", SekPc);
  }
  elprintf(EL_UIO, "pier r8  [%06x] @%06x", a, SekPc);

  return Pico.rom[(a & 0x7fff) ^ 1];
}
