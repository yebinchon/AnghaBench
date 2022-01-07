
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,int,char*) ;

__attribute__((used)) static int DisaTst(int op)
{

  int ea=0;
  char eat[64]="";
  int size=0;

  ea=op&0x003f;
  DisaGetEa(eat,ea,0);
  size=(op>>6)&3; if (size>=3) return 1;

  sprintf(DisaText,"tst.%c %s",Tasm[size],eat);
  return 0;
}
