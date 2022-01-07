
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,char*,int,int,char*) ;

__attribute__((used)) static int DisaAddq(int op)
{

  int num=0,type=0,size=0,ea=0;
  char eat[64]="";

  num =(op>>9)&7; if (num==0) num=8;
  type=(op>>8)&1;
  size=(op>>6)&3; if (size>=3) return 1;
  ea = op&0x3f;

  DisaGetEa(eat,ea,size);

  sprintf(DisaText,"%s.%c #%d, %s",type?"subq":"addq",Tasm[size],num,eat);
  return 0;
}
