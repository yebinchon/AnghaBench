
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaPc ;
 int DisaText ;
 int DisaWord (int) ;
 int MakeRegList (char*,int,int) ;
 int* Tasm ;
 int sprintf (int ,char*,int,char*,char*) ;

__attribute__((used)) static int DisaMovem(int op)
{

  int dir=0,size=0;
  int ea=0,mask=0;
  char list[64]="",eat[64]="";

  dir=(op>>10)&1;
  size=((op>>6)&1)+1;
  ea=op&0x3f; if (ea<0x10) return 1;

  mask=DisaWord(DisaPc)&0xffff; DisaPc+=2;

  MakeRegList(list,mask,ea);
  DisaGetEa(eat,ea,size);

  if (dir) sprintf(DisaText,"movem.%c %s, %s",Tasm[size],eat,list);
  else sprintf(DisaText,"movem.%c %s, %s",Tasm[size],list,eat);
  return 0;
}
