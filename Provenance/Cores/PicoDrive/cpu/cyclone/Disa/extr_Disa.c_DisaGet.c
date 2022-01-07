
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* Comment ;
 int DisaPc ;
 scalar_t__* DisaText ;
 int DisaWord (int) ;
 int TryOp (int) ;
 int strcat (scalar_t__*,scalar_t__*) ;

int DisaGet()
{
  int op=0;
  if (DisaWord==((void*)0)) return 1;

  Comment[0]=0;
  DisaText[0]=0;

  op=DisaWord(DisaPc)&0xffff; DisaPc+=2;
  TryOp(op);
  strcat(DisaText,Comment);


  return 0;
}
