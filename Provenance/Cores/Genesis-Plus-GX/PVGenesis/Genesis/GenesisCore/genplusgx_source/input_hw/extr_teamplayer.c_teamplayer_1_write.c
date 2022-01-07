
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int teamplayer_write (int ,unsigned char,unsigned char) ;

void teamplayer_1_write(unsigned char data, unsigned char mask)
{
  teamplayer_write(0, data, mask);
}
