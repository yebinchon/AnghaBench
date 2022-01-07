
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int sprintf (char*,char*) ;

__attribute__((used)) static int setcondstr(u16 cond, char *outstring)
{
   switch (cond & 0xF)
   {
      case 0x0:

         return sprintf(outstring, "t ");
      case 0x1:

         return sprintf(outstring, "f ");
      case 0x2:

         return sprintf(outstring, "hi");
      case 0x3:

         return sprintf(outstring, "ls");
      case 0x4:

         return sprintf(outstring, "cc");
      case 0x5:

         return sprintf(outstring, "cs");
      case 0x6:

         return sprintf(outstring, "ne");
      case 0x7:

         return sprintf(outstring, "eq");
      case 0x8:

         return sprintf(outstring, "vc");
      case 0x9:

         return sprintf(outstring, "vs");
      case 0xA:

         return sprintf(outstring, "pl");
      case 0xB:

         return sprintf(outstring, "mi");
      case 0xC:

         return sprintf(outstring, "ge");
      case 0xD:

         return sprintf(outstring, "lt");
      case 0xE:

         return sprintf(outstring, "gt");
      case 0xF:

         return sprintf(outstring, "le");
      default: break;
   }

   return 0;
}
