
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int** analog; } ;
struct TYPE_3__ {int State; scalar_t__ Counter; } ;


 TYPE_2__ input ;
 TYPE_1__* sportspad ;

void sportspad_reset(int index)
{
  input.analog[index][0] = 128;
  input.analog[index][1] = 128;
  sportspad[index>>2].State = 0x40;
  sportspad[index>>2].Counter = 0;
}
