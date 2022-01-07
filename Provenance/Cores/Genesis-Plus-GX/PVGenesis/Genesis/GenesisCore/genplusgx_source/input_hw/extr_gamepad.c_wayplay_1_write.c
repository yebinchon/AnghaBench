
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gamepad_write (int,unsigned char,unsigned char) ;
 int pad_index ;

void wayplay_1_write(unsigned char data, unsigned char mask)
{
  if (pad_index < 4)
  {
    gamepad_write(pad_index, data, mask);
  }
}
