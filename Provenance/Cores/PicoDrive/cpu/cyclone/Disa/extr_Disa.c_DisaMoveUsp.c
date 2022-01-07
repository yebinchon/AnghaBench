
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int DisaMoveUsp(int op)
{

  int ea=0,dir=0;
  char eat[64]="";

  dir=(op>>3)&1;
  ea=(op&7)|8;
  DisaGetEa(eat,ea,0);

  if (dir) sprintf(DisaText,"move usp, %s",eat);
  else sprintf(DisaText,"move %s, usp",eat);
  return 0;
}
