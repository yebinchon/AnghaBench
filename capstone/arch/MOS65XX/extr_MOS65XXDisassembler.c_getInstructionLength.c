
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mos65xx_address_mode ;
__attribute__((used)) static int getInstructionLength(mos65xx_address_mode am)
{
 switch(am) {
  case 132:
  case 138:
  case 136:
   return 1;

  case 137:
  case 129:
  case 128:
  case 130:
  case 131:
  case 134:
  case 133:
   return 2;

  case 141:
  case 140:
  case 139:
  case 135:
   return 3;
  default:
   return 1;
 }
}
