
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gametic ;
 scalar_t__ looping ;
 scalar_t__ musicdies ;

int I_QrySongPlaying(int handle)
{

  handle = 0;
  return looping || musicdies > gametic;
}
