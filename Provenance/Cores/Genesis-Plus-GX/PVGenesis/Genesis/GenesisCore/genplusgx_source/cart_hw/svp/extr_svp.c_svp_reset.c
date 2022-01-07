
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rom; } ;
struct TYPE_3__ {int ssp1601; scalar_t__ iram_rom; } ;


 TYPE_2__ cart ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int ssp1601_reset (int *) ;
 TYPE_1__* svp ;

void svp_reset(void)
{
  memcpy(svp->iram_rom + 0x800, cart.rom + 0x800, 0x20000 - 0x800);
  ssp1601_reset(&svp->ssp1601);
}
