
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int GetOffset (char*) ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static int DisaLink(int op)
{

  char eat[64]="";
  char offset[32]="";

  DisaGetEa(eat,(op&7)|8,0);
  GetOffset(offset);

  sprintf(DisaText,"link %s,#%s",eat,offset);

  return 0;
}
