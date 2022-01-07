
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;


 int seteafieldstr (scalar_t__,int,int*,char*) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static int discmpw(u32 addr, u16 op, char *outstring)
{
   int size=2;
   outstring += sprintf(outstring, "cmp.w   ");
   outstring += seteafieldstr(addr+size, op, &size, outstring);
   outstring += sprintf(outstring, ", d%d", (op >> 9) & 0x7);
   return size;
}
