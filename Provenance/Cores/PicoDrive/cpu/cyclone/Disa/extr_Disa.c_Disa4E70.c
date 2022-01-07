
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaText ;
 int sprintf (int ,char*,char*) ;

__attribute__((used)) static int Disa4E70(int op)
{
  char *inst[8]={"reset","nop","stop","rte","rtd","rts","trapv","rtr"};
  int n=0;

  n=op&7;

  sprintf(DisaText,"%s",inst[n]);



  return 0;
}
