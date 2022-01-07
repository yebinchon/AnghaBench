
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ bankshift; } ;
struct TYPE_10__ {int mask; int special; scalar_t__ rom; TYPE_1__ hw; } ;
struct TYPE_9__ {int lock_on; } ;
struct TYPE_8__ {TYPE_2__* memory_map; } ;
struct TYPE_7__ {scalar_t__ base; } ;


 int HW_LOCK_ON ;



 int areplay_reset (int) ;
 TYPE_5__ cart ;
 TYPE_4__ config ;
 int ggenie_reset (int) ;
 TYPE_3__ m68k ;
 scalar_t__ svp ;
 int svp_reset () ;

void md_cart_reset(int hard_reset)
{
  int i;


  if (cart.hw.bankshift)
  {
    for (i=0x00; i<0x40; i++)
    {
      m68k.memory_map[i].base = cart.rom + ((i<<16) & cart.mask);
    }
  }


  if (svp)
  {
    svp_reset();
  }


  switch (config.lock_on)
  {
    case 129:
    {
      ggenie_reset(hard_reset);
      break;
    }

    case 130:
    {
      areplay_reset(hard_reset);
      break;
    }

    case 128:
    {
      if (cart.special & HW_LOCK_ON)
      {

        for (i=0x30; i<0x40; i++)
        {
          m68k.memory_map[i].base = cart.rom + ((i<<16) & cart.mask);
        }
      }
      break;
    }

    default:
    {
      break;
    }
  }
}
