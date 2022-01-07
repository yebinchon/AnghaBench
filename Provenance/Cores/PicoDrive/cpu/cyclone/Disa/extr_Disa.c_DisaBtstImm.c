
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int sprintf (int ,char*,char*,char*,char*) ;

__attribute__((used)) static int DisaBtstImm(int op)
{

  int type=0;
  char seat[64]="",deat[64]="";
  char *opcode[4]={"btst","bchg","bclr","bset"};

  type=(op>>6)&3;
  DisaGetEa(seat, 0x3c,0);
  DisaGetEa(deat,op&0x3f,0);

  sprintf(DisaText,"%s %s, %s",opcode[type],seat,deat);
  return 0;
}
