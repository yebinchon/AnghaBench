
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* bram; } ;


 TYPE_1__* Pico_mcd ;

__attribute__((used)) static u32 PicoReadS68k8_bram(u32 a)
{
  return Pico_mcd->bram[(a>>1)&0x1fff];
}
