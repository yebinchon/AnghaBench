
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {int** analog; int* pad; } ;
struct TYPE_3__ {int busy; size_t axis; } ;


 int INPUT_B ;
 TYPE_2__ input ;
 TYPE_1__ tablet ;

unsigned short terebi_oekaki_read(void)
{
  uint16 data = (tablet.busy << 15) | input.analog[0][tablet.axis];

  if (!(input.pad[0] & INPUT_B))
  {
    data |= 0x100;
  }


  tablet.busy = 0;

  return data;
}
