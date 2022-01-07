
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;


 int seteafieldstr (scalar_t__,int,int*,char*) ;
 int setsizestr2 (int,char*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int disadd(u32 addr, u16 op, char *outstring)
{
   int size=2;

   outstring += sprintf(outstring, "add");
   outstring += setsizestr2(op >> 6, outstring);
   outstring += sprintf(outstring, "  ");

   if (op & 0x100)
   {

      outstring += sprintf(outstring, "d%d, ", (op >> 9) & 7);
      seteafieldstr(addr+size, op, &size, outstring);
   }
   else
   {

      outstring += seteafieldstr(addr+size, op, &size, outstring);
      sprintf(outstring, ", d%d", (op >> 9) & 7);
   }

   return size;
}
