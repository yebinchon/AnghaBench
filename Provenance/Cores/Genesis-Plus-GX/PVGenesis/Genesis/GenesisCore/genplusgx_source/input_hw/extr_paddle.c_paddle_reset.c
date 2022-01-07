
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int** analog; } ;
struct TYPE_3__ {int State; } ;


 TYPE_2__ input ;
 TYPE_1__* paddle ;

void paddle_reset(int index)
{
  input.analog[index][0] = 128;
  paddle[index>>2].State = 0x40;
}
