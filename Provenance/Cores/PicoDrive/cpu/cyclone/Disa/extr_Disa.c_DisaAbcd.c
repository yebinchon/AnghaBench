
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaText ;
 int sprintf (int ,char*,char*,int,int) ;

__attribute__((used)) static int DisaAbcd(int op)
{

  int type=0;
  int dn=0,addr=0,sn=0;
  char *opcode[]={"sbcd","abcd"};

  type=(op>>14)&1;
  dn =(op>> 9)&7;
  addr=(op>> 3)&1;
  sn = op &7;

  if (addr) sprintf(DisaText,"%s -(a%d), -(a%d)",opcode[type],sn,dn);
  else sprintf(DisaText,"%s d%d, d%d", opcode[type],sn,dn);

  return 0;
}
