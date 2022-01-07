
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char State; int Counter; int Wait; } ;


 TYPE_1__ mouse ;

void mouse_write(unsigned char data, unsigned char mask)
{

  data = (mouse.State & ~mask) | (data & mask);


  if ((mouse.State ^ data) & 0x40)
  {

    mouse.Counter = 1 - ((data & 0x40) >> 6);
  }


  if ((mouse.State ^ data) & 0x20)
  {

    if ((mouse.Counter > 0) && (mouse.Counter < 10))
    {

      mouse.Counter++;
    }


    mouse.Wait = 1;
  }


  mouse.State = data;
}
