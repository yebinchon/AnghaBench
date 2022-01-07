
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int state; int image; } ;


 scalar_t__ Atari800_MACHINE_5200 ;
 scalar_t__ Atari800_MACHINE_800 ;
 int Atari800_builtin_basic ;
 int Atari800_disable_basic ;
 scalar_t__ Atari800_machine_type ;
 int BINLOAD_loading_basic ;
 int CARTRIDGE_BountyBob1GetByte ;
 int CARTRIDGE_BountyBob1PutByte ;
 int CARTRIDGE_BountyBob2GetByte ;
 int CARTRIDGE_BountyBob2PutByte ;
 int MEMORY_Cart809fDisable () ;
 int MEMORY_Cart809fEnable () ;
 int MEMORY_CartA0bfDisable () ;
 int MEMORY_CartA0bfEnable () ;
 int MEMORY_CopyROM (int,int,int ) ;
 int MEMORY_SetHARDWARE (int,int) ;
 int MEMORY_SetROM (int,int) ;
 int MEMORY_basic ;
 int MEMORY_dFillMem (int,int,int) ;
 int MEMORY_have_basic ;
 int * MEMORY_readmap ;
 int * MEMORY_writemap ;
 int SwitchBank (int) ;
 TYPE_1__* active_cart ;

__attribute__((used)) static void MapActiveCart(void)
{
 if (Atari800_machine_type == Atari800_MACHINE_5200) {
  MEMORY_SetROM(0x4ff6, 0x4ff9);
  MEMORY_SetROM(0x5ff6, 0x5ff9);
  switch (active_cart->type) {
  case 194:
   MEMORY_CopyROM(0x4000, 0xbfff, active_cart->image);
   break;
  case 190:
   MEMORY_CopyROM(0x4000, 0x5fff, active_cart->image);
   MEMORY_CopyROM(0x6000, 0x9fff, active_cart->image);
   MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0x2000);
   break;
  case 192:
   MEMORY_CopyROM(0x4000, 0x4fff, active_cart->image + (active_cart->state & 0x03) * 0x1000);
   MEMORY_CopyROM(0x5000, 0x5fff, active_cart->image + 0x4000 + ((active_cart->state & 0x0c) >> 2) * 0x1000);
   MEMORY_CopyROM(0x8000, 0x9fff, active_cart->image + 0x8000);
   MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0x8000);

   MEMORY_SetHARDWARE(0x4ff6, 0x4ff9);
   MEMORY_SetHARDWARE(0x5ff6, 0x5ff9);






   break;
  case 189:
   MEMORY_CopyROM(0x8000, 0xbfff, active_cart->image);
   break;
  case 191:
   MEMORY_CopyROM(0x8000, 0x9fff, active_cart->image);
   MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image);
   break;
  case 193:
   MEMORY_CopyROM(0x8000, 0x8fff, active_cart->image);
   MEMORY_CopyROM(0x9000, 0x9fff, active_cart->image);
   MEMORY_CopyROM(0xa000, 0xafff, active_cart->image);
   MEMORY_CopyROM(0xb000, 0xbfff, active_cart->image);
   break;
  default:

   MEMORY_dFillMem(0x4000, 0, 0x8000);
   break;
  }
 }
 else {
  switch (active_cart->type) {
  case 151:
   MEMORY_Cart809fDisable();
   MEMORY_CartA0bfEnable();
   MEMORY_dFillMem(0xa000, 0xff, 0x1800);
   MEMORY_CopyROM(0xb800, 0xbfff, active_cart->image);
   break;
  case 150:
   MEMORY_Cart809fDisable();
   MEMORY_CartA0bfEnable();
   MEMORY_dFillMem(0xa000, 0xff, 0x1000);
   MEMORY_CopyROM(0xb000, 0xbfff, active_cart->image);
   break;
  case 179:
   MEMORY_Cart809fDisable();
   MEMORY_CartA0bfEnable();
   MEMORY_CopyROM(0xa000, 0xafff, active_cart->image);
   MEMORY_CopyROM(0xb000, 0xbfff, active_cart->image);
   break;
  case 149:
  case 160:
   MEMORY_Cart809fDisable();
   MEMORY_CartA0bfEnable();
   MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image);
   break;
  case 175:
   MEMORY_Cart809fEnable();
   MEMORY_CartA0bfDisable();
   MEMORY_CopyROM(0x8000, 0x9fff, active_cart->image);
   break;
  case 152:
  case 181:
   MEMORY_Cart809fEnable();
   MEMORY_CartA0bfEnable();
   MEMORY_CopyROM(0x8000, 0xbfff, active_cart->image);
   break;
  case 164:
  case 163:
   MEMORY_Cart809fDisable();
   if (active_cart->state >= 0) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xb000, 0xbfff, active_cart->image + 0x3000);
   }
   break;
  case 161:
  case 162:
   MEMORY_Cart809fDisable();
   if (active_cart->state >= 0) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xb000, 0xbfff, active_cart->image);
   }
   break;
  case 135:
  case 176:
  case 177:
  case 156:
  case 185:
  case 136:
  case 186:
  case 187:
  case 157:
  case 183:
  case 184:
  case 138:
  case 139:
  case 137:
  case 180:
  case 142:
  case 141:
  case 140:
   MEMORY_Cart809fDisable();
   break;
  case 178:
  case 130:
  case 145:
   if (!(active_cart->state & 0x80)) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0x6000);
   }
   break;
  case 134:
  case 143:
  case 128:
   if (!(active_cart->state & 0x80)) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0xe000);
   }
   break;
  case 132:
  case 147:
   if (!(active_cart->state & 0x80)) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0x1e000);
   }
   break;
  case 131:
  case 146:
   if (!(active_cart->state & 0x80)) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0x3e000);
   }
   break;
  case 129:
  case 144:
   if (!(active_cart->state & 0x80)) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0x7e000);
   }
   break;
  case 133:
  case 148:
   if (!(active_cart->state & 0x80)) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0xfe000);
   }
   break;
  case 182:
   MEMORY_Cart809fEnable();
   MEMORY_CartA0bfEnable();
   MEMORY_CopyROM(0x8000, 0x8fff, active_cart->image + (active_cart->state & 0x03) * 0x1000);
   MEMORY_CopyROM(0x9000, 0x9fff, active_cart->image + 0x4000 + ((active_cart->state & 0x0c) >> 2) * 0x1000);
   MEMORY_CopyROM(0xa000, 0xbfff, active_cart->image + 0x8000);

   MEMORY_SetHARDWARE(0x8ff6, 0x8ff9);
   MEMORY_SetHARDWARE(0x9ff6, 0x9ff9);







   return;
  case 159:
   if (Atari800_machine_type == Atari800_MACHINE_800) {
    MEMORY_Cart809fEnable();
    MEMORY_dFillMem(0x8000, 0xff, 0x1000);
    MEMORY_CopyROM(0x9000, 0x9fff, active_cart->image);
    if ((!Atari800_disable_basic || BINLOAD_loading_basic) && MEMORY_have_basic) {
     MEMORY_CartA0bfEnable();
     MEMORY_CopyROM(0xa000, 0xbfff, MEMORY_basic);
    }
    else
     MEMORY_CartA0bfDisable();
   } else {

    MEMORY_Cart809fDisable();
    MEMORY_CartA0bfDisable();
   }

   return;
  case 158:
   if (Atari800_machine_type == Atari800_MACHINE_800) {
    MEMORY_Cart809fEnable();
    MEMORY_CopyROM(0x8000, 0x9fff, active_cart->image);
    if (!Atari800_builtin_basic
        && (!Atari800_disable_basic || BINLOAD_loading_basic) && MEMORY_have_basic) {
     MEMORY_CartA0bfEnable();
     MEMORY_CopyROM(0xa000, 0xbfff, MEMORY_basic);
    }
    else
     MEMORY_CartA0bfDisable();
   } else {

    MEMORY_Cart809fDisable();
    MEMORY_CartA0bfDisable();
   }

   return;
  case 188:
   {
    int i;
    MEMORY_Cart809fDisable();
    MEMORY_CartA0bfEnable();

    for (i = 0xa000; i < 0xc000; i += 0x100)
     MEMORY_CopyROM(i, i + 0xff, active_cart->image + (active_cart->state & 0xffff));
   }
   break;
  case 171:
  case 168:
  case 165:
  case 172:
  case 169:
  case 166:
  case 173:
  case 170:
  case 167:
  case 155:
  case 154:
  case 153:
  case 174:
   break;
  default:
   MEMORY_Cart809fDisable();
   if (!Atari800_builtin_basic
   && (!Atari800_disable_basic || BINLOAD_loading_basic) && MEMORY_have_basic) {
    MEMORY_CartA0bfEnable();
    MEMORY_CopyROM(0xa000, 0xbfff, MEMORY_basic);
   }
   else
    MEMORY_CartA0bfDisable();

   return;
  }
  SwitchBank(active_cart->state);
 }
}
