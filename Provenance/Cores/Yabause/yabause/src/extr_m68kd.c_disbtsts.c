
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;


 int seteafieldstr (scalar_t__,int ,int*,char*) ;
 int setimmstr (scalar_t__,int ,int*,char*) ;
 int sprintf (char*,char*) ;

__attribute__((used)) static int disbtsts(u32 addr, u16 op, char *outstring)
{
   int size=2;

   outstring += sprintf(outstring, "btst    ");
   outstring += setimmstr(addr+size, 0, &size, outstring);
   outstring += sprintf(outstring, ", ");
   seteafieldstr(addr+size, op, &size, outstring);
   return size;
}
