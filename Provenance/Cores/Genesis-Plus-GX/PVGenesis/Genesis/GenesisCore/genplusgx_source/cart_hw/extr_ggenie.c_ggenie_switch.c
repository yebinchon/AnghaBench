
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_4__ {scalar_t__ rom; } ;
struct TYPE_3__ {int* regs; int * old; scalar_t__* addr; int * data; } ;


 TYPE_2__ cart ;
 TYPE_1__ ggenie ;

void ggenie_switch(int enable)
{
  int i;
  if (enable)
  {

    for (i=0; i<6; i++)
    {

      if (ggenie.regs[0] & (1 << i))
      {

        ggenie.old[i] = *(uint16 *)(cart.rom + ggenie.addr[i]);
        *(uint16 *)(cart.rom + ggenie.addr[i]) = ggenie.data[i];
      }
    }
  }
  else
  {

    for (i=5; i>=0; i--)
    {

      if (ggenie.regs[0] & (1 << i))
      {

        *(uint16 *)(cart.rom + ggenie.addr[i]) = ggenie.old[i];
      }
    }
  }
}
