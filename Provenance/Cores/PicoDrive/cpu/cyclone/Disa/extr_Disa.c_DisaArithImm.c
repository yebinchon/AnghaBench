
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,char*,int,char*,char*) ;

__attribute__((used)) static int DisaArithImm(int op)
{

  int dea=0;
  char seat[64]="",deat[64]="";
  int type=0,size=0;
  char *arith[8]={"or","and","sub","add","?","eor","cmp","?"};

  type=(op>>9)&7; if (type==4 || type>=7) return 1;
  size=(op>>6)&3; if (size>=3) return 1;
  dea=op&0x3f; if (dea==0x3c) return 1;

  DisaGetEa(seat,0x3c,size);
  DisaGetEa(deat,dea, size);

  sprintf(DisaText,"%si.%c %s, %s",arith[type],Tasm[size],seat,deat);
  return 0;
}
