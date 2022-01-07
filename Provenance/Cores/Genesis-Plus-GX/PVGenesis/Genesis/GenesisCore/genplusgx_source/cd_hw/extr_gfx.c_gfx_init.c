
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8 ;
typedef int uint16 ;
typedef int gfx_t ;
struct TYPE_3__ {int* lut_offset; int*** lut_prio; int* lut_cell; int* lut_pixel; } ;


 TYPE_1__ gfx ;
 int memset (TYPE_1__*,int ,int) ;

void gfx_init(void)
{
  int i, j;
  uint16 offset;
  uint8 mask, row, col, temp;

  memset(&gfx, 0, sizeof(gfx_t));



  for (i=0; i<0x4000; i++)
  {
    offset = (i & 0x07) << 8;
    offset = offset | (((i >> 8) & 0x3f) << 2);
    offset = offset | (((i >> 3) & 0x1f) << 11);
    gfx.lut_offset[i] = offset;
  }


  for (i=0x4000; i<0x6000; i++)
  {
    offset = (i & 0x07) << 8;
    offset = offset | (((i >> 7) & 0x3f) << 2);
    offset = offset | (((i >> 3) & 0x0f) << 11);
    gfx.lut_offset[i] = offset;
  }


  for (i=0x6000; i<0x7000; i++)
  {
    offset = (i & 0x07) << 8;
    offset = offset | (((i >> 6) & 0x3f) << 2);
    offset = offset | (((i >> 3) & 0x07) << 11);
    gfx.lut_offset[i] = offset | 0x8000;
  }


  for (i=0x7000; i<0x7800; i++)
  {
    offset = (i & 0x07) << 8;
    offset = offset | (((i >> 5) & 0x3f) << 2);
    offset = offset | (((i >> 3) & 0x03) << 11);
    gfx.lut_offset[i] = offset | 0xc000;
  }


  for (i=0x7800; i<0x8000; i++)
  {
    offset = (i & 0x07) << 8;
    offset = offset | (((i >> 5) & 0x3f) << 2);
    offset = offset | (((i >> 3) & 0x03) << 11);
    gfx.lut_offset[i] = offset | 0xe000;
  }


  for (i=0; i<0x100; i++)
  {
    for (j=0; j<0x100; j++)
    {

      gfx.lut_prio[0][i][j] = j;

      gfx.lut_prio[1][i][j] = ((i & 0x0f) ? (i & 0x0f) : (j & 0x0f)) | ((i & 0xf0) ? (i & 0xf0) : (j & 0xf0));

      gfx.lut_prio[2][i][j] = ((j & 0x0f) ? (j & 0x0f) : (i & 0x0f)) | ((j & 0xf0) ? (j & 0xf0) : (i & 0xf0));

      gfx.lut_prio[3][i][j] = i;
    }
  }







  for (i=0; i<0x100; i++)
  {

    mask = (i & 8) ? 3 : 1;
    row = (i >> 6) & mask;
    col = (i >> 4) & mask;

    if (i & 4) { col = col ^ mask; }
    if (i & 2) { col = col ^ mask; row = row ^ mask; }
    if (i & 1) { temp = col; col = row ^ mask; row = temp; }


    gfx.lut_cell[i] = row + col * (mask + 1);
  }






  for (i=0; i<0x200; i++)
  {

    row = (i >> 6) & 7;
    col = (i >> 3) & 7;

    if (i & 4) { col = col ^ 7; }
    if (i & 2) { col = col ^ 7; row = row ^ 7; }
    if (i & 1) { temp = col; col = row ^ 7; row = temp; }


    gfx.lut_pixel[i] = col + row * 8;
  }
}
