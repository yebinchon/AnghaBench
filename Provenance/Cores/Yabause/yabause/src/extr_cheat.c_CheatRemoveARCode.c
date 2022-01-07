
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHEATTYPE_BYTEWRITE ;
 int CHEATTYPE_ENABLE ;
 int CHEATTYPE_WORDWRITE ;
 int CheatRemoveCode (int ,unsigned long,unsigned short) ;
 int sscanf (char const*,char*,unsigned long*,unsigned short*) ;

int CheatRemoveARCode(const char *code)
{
   unsigned long addr;
   unsigned short val;
   sscanf(code, "%08lX %04hX", &addr, &val);

   switch (addr >> 28)
   {
      case 0x1:
         return CheatRemoveCode(CHEATTYPE_WORDWRITE, addr & 0x0FFFFFFF, val);
      case 0x3:
         return CheatRemoveCode(CHEATTYPE_BYTEWRITE, addr & 0x0FFFFFFF, val);
      case 0xD:
         return CheatRemoveCode(CHEATTYPE_ENABLE, addr & 0x0FFFFFFF, val);
      default: return -1;
   }
}
