
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int state; int filename; } ;
struct TYPE_3__ {int type; int state; int filename; } ;


 int CARTRIDGE_NONE ;
 TYPE_2__ CARTRIDGE_main ;
 TYPE_1__ CARTRIDGE_piggyback ;
 int StateSav_SaveFNAME (int ) ;
 int StateSav_SaveINT (int*,int) ;

void CARTRIDGE_StateSave(void)
{
 int cart_save = CARTRIDGE_main.type;

 if (CARTRIDGE_piggyback.type != CARTRIDGE_NONE)


  cart_save = -cart_save;


 StateSav_SaveINT(&cart_save, 1);
 if (CARTRIDGE_main.type != CARTRIDGE_NONE) {
  StateSav_SaveFNAME(CARTRIDGE_main.filename);
  StateSav_SaveINT(&CARTRIDGE_main.state, 1);
 }

 if (CARTRIDGE_piggyback.type != CARTRIDGE_NONE) {

  StateSav_SaveINT(&CARTRIDGE_piggyback.type, 1);
  StateSav_SaveFNAME(CARTRIDGE_piggyback.filename);
  StateSav_SaveINT(&CARTRIDGE_piggyback.state, 1);
 }
}
