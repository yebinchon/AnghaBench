
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int state; } ;
 TYPE_1__ CARTRIDGE_piggyback ;
 int Log_print (char*,int,int,int) ;
 int MEMORY_Cart809fDisable () ;
 int MEMORY_CartA0bfDisable () ;
 TYPE_1__* active_cart ;
 int set_bank_809F (int,int) ;
 int set_bank_80BF () ;
 int set_bank_A0AF (int,int) ;
 int set_bank_A0BF (int,int) ;
 int set_bank_MEGA_4096 () ;
 int set_bank_SDX_128 () ;
 int set_bank_SIC (int) ;
 int set_bank_XEGS_8F_64 () ;

__attribute__((used)) static void SwitchBank(int old_state)
{




 switch (active_cart->type) {
 case 158:
 case 157:
  set_bank_A0AF(0x3000, old_state);
  break;
 case 155:
 case 156:
  set_bank_A0AF(0x0000, old_state);
  break;
 case 135:
 case 169:
 case 170:
 case 152:
 case 136:
 case 175:
  set_bank_A0BF(8, 7);
  break;
 case 171:
 case 130:
 case 145:
  set_bank_809F(0x6000, old_state);
  break;
 case 134:
 case 143:
  set_bank_809F(0xe000, old_state);
  break;
 case 128:
  set_bank_XEGS_8F_64();
  break;
 case 132:
 case 147:
  set_bank_809F(0x1e000, old_state);
  break;
 case 131:
 case 146:
  set_bank_809F(0x3e000, old_state);
  break;
 case 129:
 case 144:
  set_bank_809F(0x7e000, old_state);
  break;
 case 133:
 case 148:
  set_bank_809F(0xfe000, old_state);
  break;
 case 177:
 case 179:
  set_bank_A0BF(0x80, 0x7f);
  break;
 case 178:
 case 138:
 case 139:
  set_bank_A0BF(0x10, 0x0f);
  break;
 case 165:
 case 162:
 case 159:
 case 166:
 case 163:
 case 160:
 case 167:
 case 164:
 case 168:
  set_bank_80BF();
  break;
 case 154:
 case 172:
  if (active_cart->state)
   MEMORY_CartA0bfDisable();
  break;
 case 174:
  if (active_cart->state) {
   MEMORY_Cart809fDisable();
   MEMORY_CartA0bfDisable();
  }
  break;
 case 153:
 case 176:
  set_bank_SDX_128();
  break;
 case 180:

  if (active_cart->state < 0x10000)
   MEMORY_CartA0bfDisable();
  break;
 case 137:
 case 173:
  set_bank_A0BF(4, 3);
  break;
 case 151:
  set_bank_SIC(0x07);
  break;
 case 150:
  set_bank_SIC(0x0f);
  break;
 case 149:
  set_bank_SIC(0x1f);
  break;
 case 161:
  set_bank_MEGA_4096();
  break;
 case 142:
  set_bank_A0BF(0x4000, 0x3fff);
  break;
 case 141:
  set_bank_A0BF(0x4000, 0x0fff);
  break;
 case 140:
  set_bank_A0BF(0x4000, 0x1fff);
  break;
 }




}
