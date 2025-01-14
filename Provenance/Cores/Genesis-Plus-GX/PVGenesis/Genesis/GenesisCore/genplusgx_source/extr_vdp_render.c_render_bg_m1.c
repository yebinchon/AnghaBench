
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int** linebuf ;
 int memset (int*,int,int) ;
 int* reg ;
 int* vram ;

void render_bg_m1(int line, int width)
{
  uint8 pattern;
  uint8 color = reg[7];

  uint8 *lb = &linebuf[0][0x20];
  uint8 *nt = &vram[((reg[2] << 10) & 0x3C00) + ((line >> 3) * 40)];
  uint8 *pg = &vram[((reg[4] << 11) & 0x3800) + (line & 7)];


  memset (lb, 0x40, 8);
  lb += 8;


  width = 40;

  do
  {
    pattern = pg[*nt++];

    *lb++ = 0x10 | ((color >> (((pattern >> 7) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 6) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 5) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 4) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 3) & 1) << 2)) & 0x0F);
    *lb++ = 0x10 | ((color >> (((pattern >> 2) & 1) << 2)) & 0x0F);
  }
  while (--width);


  memset(lb, 0x40, 8);
}
