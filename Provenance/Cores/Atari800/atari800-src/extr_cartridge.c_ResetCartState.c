
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int state; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;







__attribute__((used)) static void ResetCartState(CARTRIDGE_image_t *cart)
{
 switch (cart->type) {
 case 128:
  cart->state = 1;
  break;
 case 130:
  cart->state = 0x7f;
  break;
 case 131:


  cart->state = 0x10000;
  break;
 case 129:
  cart->state = 254;
  break;
 default:
  cart->state = 0;
 }
}
