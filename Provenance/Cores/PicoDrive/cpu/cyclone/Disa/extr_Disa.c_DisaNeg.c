
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,char*,int,char*) ;

__attribute__((used)) static int DisaNeg(int op)
{

  char eat[64]="";
  int type=0,size=0;
  char *opcode[4]={"negx","clr","neg","not"};

  type=(op>>9)&3;
  size=(op>>6)&3; if (size>=3) return 1;
  DisaGetEa(eat,op&0x3f,size);

  sprintf(DisaText,"%s.%c %s",opcode[type],Tasm[size],eat);
  return 0;
}
