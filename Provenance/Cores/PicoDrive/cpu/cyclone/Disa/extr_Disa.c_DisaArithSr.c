
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,char*,int,char*,char*) ;

__attribute__((used)) static int DisaArithSr(int op)
{

  char *opcode[6]={"ori","andi","","","","eori"};
  char seat[64]="";
  int type=0,size=0;

  type=(op>>9)&5;
  size=(op>>6)&1;

  DisaGetEa(seat,0x3c,size);
  sprintf(DisaText,"%s.%c %s, %s", opcode[type], Tasm[size], seat, size?"sr":"ccr");

  return 0;
}
