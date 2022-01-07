
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HighCol ;
 int memset32 (int*,unsigned int,int) ;

void BackFill(int reg7, int sh)
{
  unsigned int back;


  back=reg7&0x3f;
  back|=sh<<6;
  back|=back<<8;
  back|=back<<16;

  memset32((int *)(HighCol+8), back, 320/4);
}
