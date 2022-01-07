
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,int,char*,char*) ;

__attribute__((used)) static int DisaCmpEor(int op)
{

  char reat[64]="",eat[64]="";
  int type=0,size=0;

  type=(op>>8)&1;
  size=(op>>6)&3; if (size>=3) return 1;
  if ((op&0xf138)==0xb108) return 1;

  DisaGetEa(reat,(op>>9)&7,size);
  DisaGetEa(eat, op&0x3f, size);

  if (type) sprintf(DisaText,"eor.%c %s, %s",Tasm[size],reat,eat);
  else sprintf(DisaText,"cmp.%c %s, %s",Tasm[size],eat,reat);
  return 0;
}
