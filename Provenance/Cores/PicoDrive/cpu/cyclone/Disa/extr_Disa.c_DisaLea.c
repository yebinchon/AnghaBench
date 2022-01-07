
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static int DisaLea(int op)
{

  int sea=0,dea=0;
  char seat[64]="",deat[64]="";

  sea=op&0x003f;
  DisaGetEa(seat,sea,0);

  dea=(op>>9)&7; dea|=8;
  DisaGetEa(deat,dea,2);

  sprintf(DisaText,"lea %s, %s",seat,deat);
  return 0;
}
