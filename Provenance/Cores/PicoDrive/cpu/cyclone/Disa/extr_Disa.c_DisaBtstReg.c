
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int sprintf (int ,char*,char*,char*,char*) ;

__attribute__((used)) static int DisaBtstReg(int op)
{

  int type=0;
  int sea=0,dea=0;
  char seat[64]="",deat[64]="";
  char *opcode[4]={"btst","bchg","bclr","bset"};

  sea =(op>>9)&7;
  type=(op>>6)&3;
  dea= op&0x3f;

  if ((dea&0x38)==0x08) return 1;
  DisaGetEa(seat,sea,0);
  DisaGetEa(deat,dea,0);

  sprintf(DisaText,"%s %s, %s",opcode[type],seat,deat);
  return 0;
}
