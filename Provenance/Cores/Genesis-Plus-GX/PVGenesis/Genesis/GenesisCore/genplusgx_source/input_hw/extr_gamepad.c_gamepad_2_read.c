
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char gamepad_read (int) ;

unsigned char gamepad_2_read(void)
{
  return gamepad_read(4);
}
