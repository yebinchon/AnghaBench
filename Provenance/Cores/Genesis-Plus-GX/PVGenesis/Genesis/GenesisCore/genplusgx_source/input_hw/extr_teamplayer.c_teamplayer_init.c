
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* dev; } ;
struct TYPE_3__ {int* Table; } ;


 scalar_t__ DEVICE_PAD3B ;
 TYPE_2__ input ;
 TYPE_1__* teamplayer ;

void teamplayer_init(int port)
{
  int i,padnum;
  int index = 0;





  for (i=0; i<4; i++)
  {
    padnum = (4 * port) + i;
    if (input.dev[padnum] == DEVICE_PAD3B)
    {
      padnum = padnum << 4;
      teamplayer[port].Table[index++] = padnum;
      teamplayer[port].Table[index++] = padnum | 4;
    }
    else
    {
      padnum = padnum << 4;
      teamplayer[port].Table[index++] = padnum;
      teamplayer[port].Table[index++] = padnum | 4;
      teamplayer[port].Table[index++] = padnum | 8;
    }
  }
}
