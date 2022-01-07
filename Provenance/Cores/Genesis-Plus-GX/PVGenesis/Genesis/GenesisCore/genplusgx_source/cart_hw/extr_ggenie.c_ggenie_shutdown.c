
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ enabled; } ;


 TYPE_1__ ggenie ;
 int ggenie_switch (int ) ;

void ggenie_shutdown(void)
{
  if (ggenie.enabled)
  {
    ggenie_switch(0);
    ggenie.enabled = 0;
  }
}
