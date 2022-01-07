
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TICRATE ;
 scalar_t__ gametic ;
 scalar_t__ musicdies ;

void I_PlaySong(int handle, int looping)
{

  handle = looping = 0;
  musicdies = gametic + TICRATE*30;
}
