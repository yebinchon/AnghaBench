
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sportspad_write (int,unsigned char,unsigned char) ;

void sportspad_2_write(unsigned char data, unsigned char mask)
{
  sportspad_write(1, data, mask);
}
