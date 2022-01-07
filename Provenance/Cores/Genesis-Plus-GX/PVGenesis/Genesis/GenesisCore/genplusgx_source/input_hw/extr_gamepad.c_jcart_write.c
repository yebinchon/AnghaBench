
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gamepad_write (int,unsigned int,int) ;

void jcart_write(unsigned int address, unsigned int data)
{
  gamepad_write(5, (data & 1) << 6, 0x40);
  gamepad_write(6, (data & 1) << 6, 0x40);
  return;
}
