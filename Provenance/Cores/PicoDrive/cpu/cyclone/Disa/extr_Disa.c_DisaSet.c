
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaGetEa (char*,int,int ) ;
 int DisaText ;
 int sprintf (int ,char*,char*,char*) ;

__attribute__((used)) static int DisaSet(int op)
{

  static char *cond[16]=
  {"t" ,"f", "hi","ls","cc","cs","ne","eq",
   "vc","vs","pl","mi","ge","lt","gt","le"};
  char *cc="";
  int ea=0;
  char eat[64]="";

  cc=cond[(op>>8)&0xf];
  ea=op&0x3f;
  if ((ea&0x38)==0x08) return 1;

  DisaGetEa(eat,ea,0);
  sprintf(DisaText,"s%s %s",cc,eat);
  return 0;
}
