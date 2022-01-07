
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef int L3SW ;


 int L3AddIf (int *,char*,int,int) ;
 int * L3AddSw (int ,char*) ;
 int L3SwStart (int *) ;
 int ReleaseL3Sw (int *) ;

void L3Test(SERVER *s)
{
 L3SW *ss = L3AddSw(s->Cedar, "TEST");
 L3AddIf(ss, "DEFAULT", 0x0101a8c0, 0x00ffffff);
 L3AddIf(ss, "DEFAULT2", 0x0102a8c0, 0x00ffffff);
 L3SwStart(ss);
 ReleaseL3Sw(ss);
}
