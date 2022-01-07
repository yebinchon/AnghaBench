
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int DisaUnlk(int op)
{

  char eat[64]="";

  DisaGetEa(eat,(op&7)|8,0);
  sprintf(DisaText,"unlk %s",eat);

  return 0;
}
