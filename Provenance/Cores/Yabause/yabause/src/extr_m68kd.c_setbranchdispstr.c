
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
typedef scalar_t__ s8 ;
typedef scalar_t__ s32 ;
typedef scalar_t__ s16 ;


 int c68k_word_read (scalar_t__) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static int setbranchdispstr(u32 addr, u16 op, int *addsize, char *outstring)
{
   if ((op & 0xFF) == 0xFF)
   {

      *addsize += 4;
      return sprintf(outstring, ".l   %X", (unsigned int)(addr + ((c68k_word_read(addr) << 16) | c68k_word_read(addr+2))));
   }
   else if ((op & 0xFF) == 0x00)
   {

      *addsize += 2;
      return sprintf(outstring, ".w   %X", (unsigned int)((s32)addr + (s32)(s16)c68k_word_read(addr)));
   }


   return sprintf(outstring, ".s   %X", (unsigned int)((s32)addr + (s32)(s8)(op & 0xFF)));
}
