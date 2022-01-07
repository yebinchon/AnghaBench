
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_4__ {int type; int state; } ;


 scalar_t__ CARTRIDGE_Insert (char*) ;
 scalar_t__ CARTRIDGE_Insert_Second (char*) ;
 int CARTRIDGE_NONE ;
 TYPE_1__ CARTRIDGE_main ;
 TYPE_1__ CARTRIDGE_piggyback ;
 scalar_t__ CartIsPassthrough (int) ;
 int FILENAME_MAX ;
 int MapActiveCart () ;
 int StateSav_ReadFNAME (char*) ;
 int StateSav_ReadINT (int*,int) ;
 TYPE_1__* active_cart ;

void CARTRIDGE_StateRead(UBYTE version)
{
 int saved_type = CARTRIDGE_NONE;
 char filename[FILENAME_MAX];



 StateSav_ReadINT(&saved_type, 1);
 if (saved_type != CARTRIDGE_NONE) {
  StateSav_ReadFNAME(filename);
  if (filename[0]) {

   if (CARTRIDGE_Insert(filename) >= 0) {

    CARTRIDGE_main.type = saved_type;
   }
  }
  if (version >= 7)

   StateSav_ReadINT(&CARTRIDGE_main.state, 1);
 }
 else
  CARTRIDGE_main.type = saved_type;

 if (saved_type < 0) {

  CARTRIDGE_main.type = -saved_type;

  StateSav_ReadINT(&saved_type, 1);
  StateSav_ReadFNAME(filename);
  if (filename[0]) {

   if (CARTRIDGE_Insert_Second(filename) >= 0) {

    CARTRIDGE_piggyback.type = saved_type;
   }
  }
  if (version >= 7)

   StateSav_ReadINT(&CARTRIDGE_piggyback.state, 1);
  else {


   int piggyback_active;
   StateSav_ReadINT(&piggyback_active, 1);
   if (piggyback_active)
    active_cart = &CARTRIDGE_piggyback;
   else
    active_cart = &CARTRIDGE_main;



   return;
  }
 }


 if (CartIsPassthrough(CARTRIDGE_main.type) && (CARTRIDGE_main.state & 0x0c) == 0x08)
  active_cart = &CARTRIDGE_piggyback;
 else
  active_cart = &CARTRIDGE_main;

 MapActiveCart();
}
