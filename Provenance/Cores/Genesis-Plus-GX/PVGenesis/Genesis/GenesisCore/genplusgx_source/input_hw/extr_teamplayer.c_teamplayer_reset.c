
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int State; scalar_t__ Counter; } ;


 TYPE_1__* teamplayer ;

void teamplayer_reset(int port)
{
  teamplayer[port].State = 0x60;
  teamplayer[port].Counter = 0;
}
