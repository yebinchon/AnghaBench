
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaText ;
 int GetOffset (char*) ;
 int* Tasm ;
 int sprintf (int ,char*,int,...) ;

__attribute__((used)) static int DisaMovep(int op)
{

  int dn=0,dir=0,size=0,an=0;
  char offset[32]="";

  dn =(op>>9)&7;
  dir =(op>>7)&1;
  size=(op>>6)&1; size++;
  an = op &7;

  GetOffset(offset);
  if (dir) sprintf(DisaText,"movep.%c d%d, (%s,a%d)",Tasm[size],dn,offset,an);
  else sprintf(DisaText,"movep.%c (%s,a%d), d%d",Tasm[size],offset,an,dn);

  return 0;
}
