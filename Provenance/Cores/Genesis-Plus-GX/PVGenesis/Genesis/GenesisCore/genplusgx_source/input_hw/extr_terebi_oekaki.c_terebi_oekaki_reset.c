
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int** analog; } ;
struct TYPE_3__ {int axis; int busy; } ;


 TYPE_2__ input ;
 TYPE_1__ tablet ;

void terebi_oekaki_reset(void)
{
  input.analog[0][0] = 128;
  input.analog[0][1] = 128;
  tablet.axis = 1;
  tablet.busy = 1;
}
