
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 int PicoOpt ;
 int PicoRegionOverride ;
 int unbind_action (int) ;

__attribute__((used)) static void menu_options_save(void)
{
 if (PicoRegionOverride) {

  Pico.m.pal = (PicoRegionOverride == 2 || PicoRegionOverride == 8) ? 1 : 0;
 }
 if (!(PicoOpt & 0x20)) {

  unbind_action(0xf00);
 }
}
