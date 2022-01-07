
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,int,char*) ;

__attribute__((used)) static int DisaExt(int op)
{

  char eat[64]="";
  int size=0;

  size=(op>>6)&1; size++;
  DisaGetEa(eat,op&0x3f,size);

  sprintf(DisaText,"ext.%c %s",Tasm[size],eat);
  return 0;
}
