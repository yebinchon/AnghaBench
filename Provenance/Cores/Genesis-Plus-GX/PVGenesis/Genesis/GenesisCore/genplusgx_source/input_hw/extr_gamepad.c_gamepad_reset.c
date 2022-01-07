
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int State; scalar_t__ Timeout; scalar_t__ Counter; } ;


 TYPE_1__* gamepad ;
 scalar_t__ pad_index ;

void gamepad_reset(int port)
{

  gamepad[port].State = 0x40;
  gamepad[port].Counter = 0;
  gamepad[port].Timeout = 0;


  pad_index = 0;
}
