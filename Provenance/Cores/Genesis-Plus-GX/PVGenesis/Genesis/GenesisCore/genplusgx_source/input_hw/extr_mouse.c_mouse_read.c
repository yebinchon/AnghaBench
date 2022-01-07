
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int** analog; int* pad; } ;
struct TYPE_3__ {size_t Port; int Counter; int State; scalar_t__ Wait; } ;


 TYPE_2__ input ;
 TYPE_1__ mouse ;

unsigned char mouse_read()
{
  unsigned int temp = 0x00;
  int x = input.analog[mouse.Port][0];
  int y = input.analog[mouse.Port][1];

  switch (mouse.Counter)
  {
    case 0:
      temp = 0x00;
      break;

    case 1:
      temp = 0x0B;
      break;

    case 2:
      temp = 0x0F;
      break;

    case 3:
      temp = 0x0F;
      break;

    case 4:
      temp |= (x < 0);
      temp |= (y < 0) << 1;




      break;

    case 5:
      temp = (input.pad[mouse.Port] >> 4) & 0x0F;
      break;

    case 6:
      temp = (x >> 4) & 0x0F;
      break;

    case 7:
      temp = (x & 0x0F);
      break;

    case 8:
      temp = (y >> 4) & 0x0F;
      break;

    case 9:
      temp = (y & 0x0F);
      break;
  }


  if (mouse.Wait)
  {

    mouse.Wait = 0;


    temp |= (~mouse.State & 0x20) >> 1;
  }
  else
  {

    temp |= (mouse.State & 0x20) >> 1;
  }

  return temp;
}
