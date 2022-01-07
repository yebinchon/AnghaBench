
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int) ;
 int DisaText ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int DisaPea(int op)
{

  int ea=0;
  char eat[64]="";

  ea=op&0x003f; if (ea<0x10) return 1;
  DisaGetEa(eat,ea,2);

  sprintf(DisaText,"pea %s",eat);
  return 0;
}
