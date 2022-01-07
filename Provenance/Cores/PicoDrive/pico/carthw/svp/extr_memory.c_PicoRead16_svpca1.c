
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ dram; } ;


 TYPE_1__* svp ;

__attribute__((used)) static u32 PicoRead16_svpca1(u32 a)
{

  u32 a1 = a >> 1;
  a1 = (a1 & 0x7001) | ((a1 & 0x3e) << 6) | ((a1 & 0xfc0) >> 5);
  return ((u16 *)svp->dram)[a1];
}
