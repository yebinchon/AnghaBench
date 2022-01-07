
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int DisaMoveSr(int op)
{

  int type=0,ea=0;
  char eat[64]="";

  type=(op>>9)&3;
  ea=op&0x3f;
  DisaGetEa(eat,ea,1);

  switch (type)
  {
    default: sprintf(DisaText,"move sr, %s", eat); break;
    case 1: sprintf(DisaText,"move ccr, %s",eat); break;
    case 2: sprintf(DisaText,"move %s, ccr",eat); break;
    case 3: sprintf(DisaText,"move %s, sr", eat); break;
  }
  return 0;
}
