
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char sportspad_read (int) ;

unsigned char sportspad_2_read(void)
{
  return sportspad_read(4);
}
