
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct Scsp {TYPE_2__* slots; } ;
struct TYPE_4__ {scalar_t__ kb; } ;
struct TYPE_5__ {TYPE_1__ regs; } ;


 int keyoff (TYPE_2__*) ;
 int keyon (TYPE_2__*) ;

void keyonex(struct Scsp *s)
{
   int channel;
   for (channel = 0; channel < 32; channel++)
   {
      if (s->slots[channel].regs.kb)
         keyon(&s->slots[channel]);
      else
         keyoff(&s->slots[channel]);
   }
}
