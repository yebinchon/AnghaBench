
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int c68k_word_read (int ) ;
 int sprintf (char*,char*,unsigned int,...) ;

__attribute__((used)) static int seteafieldstr(u32 addr, u16 modereg, int *addsize, char *outstring)
{
   switch ((modereg >> 3) & 0x7)
   {
      case 0x0:

         return sprintf(outstring, "d%d", modereg & 0x7);
      case 0x1:

         return sprintf(outstring, "a%d", modereg & 0x7);
      case 0x2:

         return sprintf(outstring, "(a%d)", modereg & 0x7);
      case 0x3:

         return sprintf(outstring, "(a%d)+", modereg & 0x7);
      case 0x4:

         return sprintf(outstring, "-(a%d)", modereg & 0x7);
      case 0x5:

         *addsize += 2;
         return sprintf(outstring, "0x%X(a%d)", (unsigned int)c68k_word_read(addr), modereg & 0x7);
      case 0x6:


         *addsize += 2;
         return sprintf(outstring, "0x%X(a%d, Xn)", (unsigned int)(c68k_word_read(addr) & 0xFF), modereg & 0x7);
      case 0x7:
         switch (modereg & 0x7)
         {
            case 0x0:

               *addsize += 2;
               return sprintf(outstring, "(0x%X).w", (unsigned int)c68k_word_read(addr));
            case 0x1:

               *addsize += 4;
               return sprintf(outstring, "(0x%X).l", (unsigned int)((c68k_word_read(addr) << 16) | c68k_word_read(addr+2)));
            case 0x4:

               *addsize += 2;
               return sprintf(outstring, "#0x%X", (unsigned int)c68k_word_read(addr));
            case 0x2:

               *addsize += 2;
               return sprintf(outstring, "0x%X(PC)", (unsigned int)c68k_word_read(addr));
            case 0x3:


               return 0;
            default: break;
         }
      default: break;
   }

   return 0;
}
