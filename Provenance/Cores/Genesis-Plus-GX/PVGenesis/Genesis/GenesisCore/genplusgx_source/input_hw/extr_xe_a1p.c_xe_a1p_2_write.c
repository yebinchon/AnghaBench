
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xe_a1p_write (int,unsigned char,unsigned char) ;

void xe_a1p_2_write(unsigned char data, unsigned char mask)
{
  xe_a1p_write(1, data, mask);
}
