
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UWORD ;
typedef int UBYTE ;
struct TYPE_6__ {int state; int type; int* image; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;




 int CARTRIDGE_NONE ;






 TYPE_1__ CARTRIDGE_piggyback ;
 int Log_print (char*,int,int) ;
 int SwitchBank (int) ;
 scalar_t__ access_D5 (TYPE_1__*,int,int*) ;
 TYPE_1__* active_cart ;

__attribute__((used)) static UBYTE GetByte(CARTRIDGE_image_t *cart, UWORD addr, int no_side_effects)
{
 int old_state = cart->state;
 int new_state = old_state;







 if (!no_side_effects && access_D5(cart, addr, &new_state)) {


  if (new_state != old_state) {
   cart->state = new_state;
   if (cart == active_cart)
    SwitchBank(old_state);
  }
 }


 switch (cart->type) {
 case 135:


  return cart->image[(cart->state & 0xff00) | (addr & 0xff)];
 case 131:
 case 132:
 case 133:
 case 134:

  if ((addr & 0xe0) == 0x00)
   return cart->state;
  break;
 case 130:
 case 129:
 case 128:
  switch (addr) {
  case 0xd5a0:
   return cart->state & 0x00ff;
  case 0xd5a1:
   return (cart->state & 0x3f00) >> 8;
  case 0xd5a2:
   return (~cart->state & 0x4000) >> 14;
  }
  break;
 }
 return 0xff;
}
