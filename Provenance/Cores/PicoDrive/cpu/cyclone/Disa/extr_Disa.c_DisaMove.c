
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (char*,char*,char*,...) ;

__attribute__((used)) static int DisaMove(int op)
{

  int sea=0,dea=0;
  char inst[64]="",seat[64]="",deat[64]="";
  char *movea="";
  int size=0;

  if ((op&0x01c0)==0x0040) movea="a";


  switch (op&0x3000)
  {
    case 0x1000: size=0; break;
    case 0x3000: size=1; break;
    case 0x2000: size=2; break;
    default: return 1;
  }

  sea = op&0x003f;
  DisaGetEa(seat,sea,size);

  dea =(op&0x01c0)>>3;
  dea|=(op&0x0e00)>>9;
  DisaGetEa(deat,dea,size);

  sprintf(inst,"move%s.%c",movea,Tasm[size]);
  sprintf(DisaText,"%s %s, %s",inst,seat,deat);
  return 0;
}
