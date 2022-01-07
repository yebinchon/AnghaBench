
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int END_ROW ;
 int LINE_WIDTH ;
 scalar_t__ PicoDraw2FB ;
 int START_ROW ;
 int memset32 (int*,unsigned int,int) ;

__attribute__((used)) static void BackFillFull(int reg7)
{
 unsigned int back;



 back=reg7&0x3f;
 back|=back<<8;
 back|=back<<16;

 memset32((int *)PicoDraw2FB, back, LINE_WIDTH*(8+(END_ROW-START_ROW)*8)/4);
}
