
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* rcheevos_rc_error(int ret)
{
   switch (ret)
   {
      case 128: return "Ok";
      case 136: return "Invalid Lua operand";
      case 135: return "Invalid memory operand";
      case 139: return "Invalid constant operand";
      case 138: return "Invalid floating-point operand";
      case 140: return "Invalid condition type";
      case 134: return "Invalid operator";
      case 133: return "Invalid required hits";
      case 143: return "Duplicated start condition";
      case 145: return "Duplicated cancel condition";
      case 142: return "Duplicated submit condition";
      case 141: return "Duplicated value expression";
      case 144: return "Duplicated progress expression";
      case 131: return "Missing start condition";
      case 132: return "Missing cancel condition";
      case 130: return "Missing submit condition";
      case 129: return "Missing value expression";
      case 137: return "Invalid field in leaderboard";
      default: return "Unknown error";
   }
}
