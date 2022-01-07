
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CJUMP ;
 scalar_t__ RJUMP ;
 scalar_t__ SJUMP ;
 scalar_t__ SYSCALL ;
 scalar_t__ SYSTEM ;
 scalar_t__ UJUMP ;
 int* ba ;
 scalar_t__* itype ;
 int* rs1 ;
 int* rs2 ;
 int slen ;
 int start ;
 int* unneeded_reg ;

int needed_again(int r, int i)
{
  int j;
  int b=-1;
  int rn=10;

  if(i>0&&(itype[i-1]==UJUMP||itype[i-1]==RJUMP))
  {
    if(ba[i-1]<start || ba[i-1]>start+slen*4-4)
      return 0;
  }
  for(j=0;j<9;j++)
  {
    if(i+j>=slen) {
      j=slen-i-1;
      break;
    }
    if(itype[i+j]==UJUMP||itype[i+j]==RJUMP)
    {

      j++;
      break;
    }
    if(itype[i+j]==SYSCALL||itype[i+j]==SYSTEM)
    {
      break;
    }
  }
  for(;j>=1;j--)
  {
    if(rs1[i+j]==r) rn=j;
    if(rs2[i+j]==r) rn=j;
    if((unneeded_reg[i+j]>>r)&1) rn=10;
    if(i+j>=0&&(itype[i+j]==UJUMP||itype[i+j]==CJUMP||itype[i+j]==SJUMP))
    {
      b=j;
    }
  }
  if(rn<10) return 1;
  return 0;
}
