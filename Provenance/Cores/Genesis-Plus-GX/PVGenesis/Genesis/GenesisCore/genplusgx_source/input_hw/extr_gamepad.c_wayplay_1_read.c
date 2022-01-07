
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char gamepad_read (int) ;
 int pad_index ;

unsigned char wayplay_1_read(void)
{
  if (pad_index < 4)
  {
    return gamepad_read(pad_index);
  }


  return 0x70;
}
