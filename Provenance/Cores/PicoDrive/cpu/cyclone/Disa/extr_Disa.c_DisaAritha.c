
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,char*,int,char*,char*) ;

__attribute__((used)) static int DisaAritha(int op)
{

  int type=0,size=0,sea=0,dea=0;
  char seat[64]="",deat[64]="";
  char *aritha[4]={"suba","cmpa","adda",""};

  type=(op>>13)&3; if (type>=3) return 1;
  size=(op>>8)&1; size++;
  dea =(op>>9)&7; dea|=8;
  sea = op&0x003f;

  DisaGetEa(seat,sea,size);
  DisaGetEa(deat,dea,size);

  sprintf(DisaText,"%s.%c %s, %s",aritha[type],Tasm[size],seat,deat);
  return 0;
}
