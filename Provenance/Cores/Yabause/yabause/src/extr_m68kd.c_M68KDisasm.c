
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_2__ {int mask; int inst; scalar_t__ (* disasm ) (scalar_t__,int,char*) ;int * name; } ;


 int c68k_word_read (scalar_t__) ;
 TYPE_1__* instruction ;
 int sprintf (char*,char*,...) ;
 scalar_t__ stub1 (scalar_t__,int,char*) ;

u32 M68KDisasm(u32 addr, char *outstring)
{
   int i;

   outstring += sprintf(outstring, "%05X: ", (unsigned int)addr);

   for (i = 0; instruction[i].name != ((void*)0); i++)
   {
      u16 op = (u16)c68k_word_read(addr);

      if ((op & instruction[i].mask) == instruction[i].inst)
      {
         addr += instruction[i].disasm(addr, op, outstring);
         return addr;
      }
   }

   sprintf(outstring, "unknown");
   return (addr+2);
}
