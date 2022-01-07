
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int DisaNbcd(int op)
{

  int ea=0;
  char eat[64]="";

  ea=op&0x003f;
  DisaGetEa(eat,ea,0);

  sprintf(DisaText,"nbcd %s",eat);
  return 0;
}
