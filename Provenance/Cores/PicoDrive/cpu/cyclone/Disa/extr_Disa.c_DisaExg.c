
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DisaText ;
 int sprintf (int ,char*,int,int) ;

__attribute__((used)) static int DisaExg(int op)
{
  int tr=0,type=0,sr=0;

  tr =(op>>9)&7;
  type= op&0xf8;
  sr = op&7;

       if (type==0x40) sprintf(DisaText,"exg d%d, d%d",sr,tr);
  else if (type==0x48) sprintf(DisaText,"exg a%d, a%d",sr,tr);
  else if (type==0x88) sprintf(DisaText,"exg a%d, d%d",sr,tr);
  else return 1;

  return 0;
}
