
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* pixel ;
 void*** pixel_lut ;
 int* reg ;

void color_update_m5(int index, unsigned int data)
{

  if (!(reg[0] & 0x04))
  {

    data &= 0x49;
  }

  if(reg[12] & 0x08)
  {

    pixel[0x00 | index] = pixel_lut[0][data];
    pixel[0x40 | index] = pixel_lut[1][data];
    pixel[0x80 | index] = pixel_lut[2][data];
  }
  else
  {

    data = pixel_lut[1][data];


    pixel[0x00 | index] = data;
    pixel[0x40 | index] = data;
    pixel[0x80 | index] = data;
  }
}
