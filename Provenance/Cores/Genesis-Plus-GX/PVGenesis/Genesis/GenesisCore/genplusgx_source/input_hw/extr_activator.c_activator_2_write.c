
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int activator_write (int,unsigned char,unsigned char) ;

void activator_2_write(unsigned char data, unsigned char mask)
{
  activator_write(1, data, mask);
}
