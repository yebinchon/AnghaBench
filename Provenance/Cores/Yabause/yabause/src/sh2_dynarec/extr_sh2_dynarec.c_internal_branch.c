
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int slen ;
 int start ;

int internal_branch(int addr)
{
  if(addr&1) return 0;
  if(addr>=start && addr<start+slen*2-2)
  {
    return 1;
  }
  return 0;
}
