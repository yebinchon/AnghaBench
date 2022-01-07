
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int** linebuf ;
 int memset (int*,int,int) ;
 int* reg ;

void render_bg_inv(int line, int width)
{
  uint8 color = reg[7];

  uint8 *lb = &linebuf[0][0x20];


  memset (lb, 0x40, 8);
  lb += 8;


  width = 40;

  do
  {
    *lb++ = 0x10 | ((color >> 4) & 0x0F);
    *lb++ = 0x10 | ((color >> 4) & 0x0F);
    *lb++ = 0x10 | ((color >> 4) & 0x0F);
    *lb++ = 0x10 | ((color >> 4) & 0x0F);
    *lb++ = 0x10 | ((color >> 0) & 0x0F);
    *lb++ = 0x10 | ((color >> 0) & 0x0F);
  }
  while (--width);


  memset(lb, 0x40, 8);
}
