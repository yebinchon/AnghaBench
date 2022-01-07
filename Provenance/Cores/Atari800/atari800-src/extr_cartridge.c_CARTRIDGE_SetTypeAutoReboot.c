
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CARTRIDGE_image_t ;


 int AutoReboot () ;
 int CARTRIDGE_SetType (int *,int) ;
 int CARTRIDGE_piggyback ;

void CARTRIDGE_SetTypeAutoReboot(CARTRIDGE_image_t *cart, int type)
{
 CARTRIDGE_SetType(cart, type);

 if (cart != &CARTRIDGE_piggyback)
  AutoReboot();
}
