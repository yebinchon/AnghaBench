
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UWORD ;
typedef int UBYTE ;
struct TYPE_6__ {int state; int type; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;
 int CARTRIDGE_NONE ;
 TYPE_1__ CARTRIDGE_piggyback ;
 int Log_print (char*,int,int,int) ;
 int SwitchBank (int) ;
 int access_D5 (TYPE_1__*,int,int*) ;
 TYPE_1__* active_cart ;

__attribute__((used)) static void PutByte(CARTRIDGE_image_t *cart, UWORD addr, UBYTE byte)
{
 int old_state = cart->state;
 int new_state = old_state;






 switch (cart->type) {
 case 130:
  new_state = byte & 0x03;
  break;
 case 134:
  new_state = byte & 0x07;
  break;
 case 132:
 case 128:
  new_state = byte & 0x0f;
  break;
 case 131:
  new_state = byte & 0x1f;
  break;
 case 129:
  new_state = byte & 0x3f;
  break;
 case 133:
  new_state = byte & 0x7f;
  break;
 case 153:
  new_state = byte & 0x80;
  break;
 case 150:
  new_state = byte & 0x81;
  break;
 case 147:
 case 140:
  new_state = byte & 0x83;
  break;
 case 154:
 case 138:
  new_state = byte & 0x87;
  break;
 case 151:
 case 142:
 case 156:
  new_state = byte & 0x8f;
  break;
 case 148:
 case 141:
  new_state = byte & 0x9f;
  break;
 case 155:
 case 139:
  new_state = byte & 0xbf;
  break;
 case 152:
 case 143:
  new_state = byte;
  break;
 case 157:

  new_state = (old_state + 0x100) & 0x7fff;
  break;
 case 144:
 case 145:
 case 146:
 case 149:

  if ((addr & 0xe0) == 0x00)
   new_state = byte;
  break;
 case 137:
 case 136:
 case 135:
  switch (addr) {
  case 0xd5a0:
   new_state = (old_state & 0x3f00) | byte;
   break;
  case 0xd5a1:
   new_state = (old_state & 0x00ff) | ((byte & 0x3f) << 8);
   break;
  case 0xd5a2:
   new_state = (old_state & 0x3fff) | ((~byte & 0x01) << 14);
   break;
  }
  break;
 default:

  if (!access_D5(cart, addr, &new_state))


   return;
 }


 if (new_state != old_state) {
  cart->state = new_state;
  if (cart == active_cart)
   SwitchBank(old_state);
 }
}
