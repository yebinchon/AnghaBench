
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static int DisaJsr(int op)
{

  int sea=0;
  char seat[64]="";

  sea=op&0x003f;
  DisaGetEa(seat,sea,0);

  sprintf(DisaText,"j%s %s", op&0x40?"mp":"sr", seat);
  return 0;
}
