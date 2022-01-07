
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,int,char*,char*) ;

__attribute__((used)) static int DisaCmpm(int op)
{

  int size=0,dea=0,sea=0;
  char deat[64]="",seat[64]="";

  dea =(op>> 9)&7; dea|=8;
  size=(op>> 6)&3; if (size>=3) return 1;
  sea = op&0x3f;

  DisaGetEa(deat,dea,size);
  DisaGetEa(seat,sea,size);

  sprintf(DisaText,"cmpm.%c (%s)+, (%s)+",Tasm[size],seat,deat);

  return 0;
}
