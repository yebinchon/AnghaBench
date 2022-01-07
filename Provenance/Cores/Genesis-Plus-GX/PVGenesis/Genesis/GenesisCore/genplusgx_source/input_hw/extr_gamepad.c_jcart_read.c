
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gamepad_read (int) ;

unsigned int jcart_read(unsigned int address)
{

   return ((gamepad_read(5) & 0x7F) | ((gamepad_read(6) & 0x3F) << 8));
}
