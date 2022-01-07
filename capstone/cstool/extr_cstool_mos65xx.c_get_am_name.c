
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mos65xx_address_mode ;
__attribute__((used)) static const char *get_am_name(mos65xx_address_mode mode)
{
 switch(mode) {
  default:
  case 132:
   return "No address mode";
  case 136:
   return "implied addressing (no addressing mode)";
  case 138:
   return "accumulator addressing";
  case 141:
   return "absolute addressing";
  case 130:
   return "zeropage addressing";
  case 137:
   return "8 Bit immediate value";
  case 140:
   return "indexed absolute addressing by the X index register";
  case 139:
   return "indexed absolute addressing by the Y index register";
  case 134:
   return "indexed indirect addressing by the X index register";
  case 133:
   return "indirect indexed addressing by the Y index register";
  case 129:
   return "indexed zeropage addressing by the X index register";
  case 128:
   return "indexed zeropage addressing by the Y index register";
  case 131:
   return "relative addressing used by branches";
  case 135:
   return "absolute indirect addressing";
 }
}
