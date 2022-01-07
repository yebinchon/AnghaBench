
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int sprintf (int ,char*,char*,int,char*) ;

__attribute__((used)) static int DisaMoveq(int op)
{


  int dea=0; char deat[64]="";
  char *inst="moveq";
  int val=0;

  dea=(op>>9)&7;
  DisaGetEa(deat,dea,2);

  val=(char)(op&0xff);
  sprintf(DisaText,"%s #$%x, %s",inst,val,deat);
  return 0;
}
