
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int NBBY ;
 int clrbit (int*,int) ;

void
clrbits(u_char *cp, int off, int len)
{
 int sby, sbi, eby, ebi;
 int i;
 u_char mask;

 if(len==1) {
  clrbit(cp, off);
  return;
 }

 sby = off / NBBY;
 sbi = off % NBBY;
 eby = (off+len) / NBBY;
 ebi = (off+len) % NBBY;
 if (sby == eby) {
  mask = ((1 << (ebi - sbi)) - 1) << sbi;
  cp[sby] &= ~mask;
 } else {
  mask = (1<<sbi) - 1;
  cp[sby++] &= mask;

  mask = (1<<ebi) - 1;

  if (mask)
   cp[eby] &= ~mask;

  for (i = sby; i < eby; i++)
   cp[i] = 0x00;
 }
}
