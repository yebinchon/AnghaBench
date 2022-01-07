
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,char*,int,char*,char*) ;

__attribute__((used)) static int DisaAddx(int op)
{

  int type=0,size=0,dea=0,sea=0,mem;
  char deat[64]="",seat[64]="";
  char *opcode[6]={"","subx","","","","addx"};

  type=(op>>12)&5;
  dea =(op>> 9)&7;
  size=(op>> 6)&3; if (size>=3) return 1;
  sea = op&7;
  mem = op&8;
  if(mem) { sea+=0x20; dea+=0x20; }

  DisaGetEa(deat,dea,size);
  DisaGetEa(seat,sea,size);

  sprintf(DisaText,"%s.%c %s, %s",opcode[type],Tasm[size],seat,deat);
  return 0;
}
