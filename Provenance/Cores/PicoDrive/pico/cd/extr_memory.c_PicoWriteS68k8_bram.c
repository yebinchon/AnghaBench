
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* bram; } ;
struct TYPE_3__ {int changed; } ;


 TYPE_2__* Pico_mcd ;
 TYPE_1__ SRam ;

__attribute__((used)) static void PicoWriteS68k8_bram(u32 a, u32 d)
{
  Pico_mcd->bram[(a >> 1) & 0x1fff] = d;
  SRam.changed = 1;
}
