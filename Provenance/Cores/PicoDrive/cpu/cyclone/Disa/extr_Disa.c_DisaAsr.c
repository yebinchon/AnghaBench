
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** AsrName ;
 int DisaText ;
 int* Tasm ;
 int sprintf (int ,char*,char*,char,int,char,int,int) ;

__attribute__((used)) static int DisaAsr(int op)
{


  int count=0,dir=0,size=0,usereg=0,type=0,num=0;

  count =(op>>9)&7;
  dir =(op>>8)&1;
  size =(op>>6)&3; if (size>=3) return 1;
  usereg=(op>>5)&1;
  type =(op>>3)&3;
  num = op &7;

  if (usereg==0) count=((count-1)&7)+1;

  sprintf(DisaText,"%s%c.%c %c%d, d%d",
    AsrName[type], dir?'l':'r', Tasm[size],
    usereg?'d':'#', count, num);
  return 0;
}
