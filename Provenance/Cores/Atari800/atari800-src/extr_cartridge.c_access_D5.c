
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UWORD ;
struct TYPE_6__ {int state; int type; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;
 TYPE_1__ CARTRIDGE_main ;
 TYPE_1__ CARTRIDGE_piggyback ;
 int FALSE ;
 int MapActiveCart () ;
 int TRUE ;
 TYPE_1__* active_cart ;

__attribute__((used)) static int access_D5(CARTRIDGE_image_t *cart, UWORD addr, int *state)
{
 int old_state = cart->state;
 int new_state;

 switch (cart->type) {
 case 139:






  if (addr & 0x08)
   new_state = -1;
  else
   switch (addr & 0x07) {
   case 0x00:

    new_state = 0;
    break;
   case 0x01:


    new_state = 0xff;
    break;
   case 0x03:
   case 0x07:

    new_state = 1;
    break;
   case 0x04:

    new_state = 2;
    break;
   case 0x05:


    new_state = 0xff;
    break;
   default:

    new_state = 0xff;
    break;
   }
  break;
 case 138:







  if (addr & 0x08)
   new_state = -1;
  else
   switch (addr & 0x07) {
   case 0x00:

    new_state = 0;
    break;
   case 0x01:


    new_state = 0xff;
    break;
   case 0x03:
   case 0x07:

    new_state = 2;
    break;
   case 0x04:

    new_state = 1;
    break;
   case 0x05:


    new_state = 0xff;
    break;
   default:

    new_state = 0xff;
    break;
   }
  break;
 case 143:
  new_state = addr & 0x03;
  break;
 case 128:
  new_state = addr & 0x0f;
  break;
 case 129:
  new_state = addr & 0x0b;
  break;
 case 141:

  if ((addr & 0xf0) != 0x70)
   return FALSE;
  new_state = ((addr ^ 7) & 0x0f);
  break;
 case 142:

  if ((addr & 0xf0) != 0xd0)
   return FALSE;
  new_state = ((addr ^ 7) & 0x0f);
  break;
 case 133:
 case 147:

  if ((addr & 0xf0) != 0xe0)
   return FALSE;
  if (addr & 0x08)
   new_state = addr & 0x0c;
  else

   new_state = ((addr ^ 0x07) & 0x0f);
  if (cart == &CARTRIDGE_main) {

   if ((old_state & 0x0c) == 0x08) {
    if ((new_state & 0x0c) != 0x08) {
     active_cart = &CARTRIDGE_main;
     MapActiveCart();
    }
   }
   else if ((new_state & 0x0c) == 0x08) {
    active_cart = &CARTRIDGE_piggyback;
    MapActiveCart();
   }
  }
  break;
 case 134:
 case 148:

  if ((addr & 0xe0) != 0xe0)
   return FALSE;
  if (addr & 0x08)
   new_state = addr & 0x0c;
  else

   new_state = ((addr ^ 0x17) & 0x1f);
  if (cart == &CARTRIDGE_main) {

   if ((old_state & 0x0c) == 0x08) {
    if ((new_state & 0x0c) != 0x08) {
     active_cart = &CARTRIDGE_main;
     MapActiveCart();
    }
   }
   else if ((new_state & 0x0c) == 0x08) {
    active_cart = &CARTRIDGE_piggyback;
    MapActiveCart();
   }
  }
  break;
 case 136:
  switch (addr & 0x09) {
  case 0x00:
   new_state = 1;
   break;
  case 0x01:
   new_state = 3;
   break;
  case 0x08:
   new_state = -1;
   break;
  default:
   new_state = 2;
   break;
  }
  break;
 case 144:
 case 135:
 case 146:

  new_state = 1;
  break;
 case 149:

  if ((addr & 0xe0) != 0)
   return FALSE;

 case 132:
  new_state = addr & 0x1f;
  break;
 case 131:
  new_state = addr & 0x17;
  break;
 case 150:
 case 140:
  new_state = addr;
  break;
 case 137:
  switch (addr & 0x09) {
  case 0x00:
  case 0x01:
   new_state = 1;
   break;
  case 0x08:
   new_state = -1;
   break;
  default:
   new_state = 0;
   break;
  }
  break;
 case 130:
  new_state = (old_state + 1) % 5;
  break;
 case 145:
  if (old_state < 4)
   new_state = old_state + 1;
  break;
 default:

  return FALSE;
 }
 *state = new_state;
 return TRUE;
}
