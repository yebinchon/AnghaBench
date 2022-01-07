
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int direction; TYPE_1__* sector; int maxlight; int minlight; } ;
typedef TYPE_2__ glow_t ;
struct TYPE_4__ {int lightlevel; } ;


 int GLOWSPEED ;

void T_Glow(glow_t* g)
{
    switch(g->direction)
    {
      case -1:

 g->sector->lightlevel -= GLOWSPEED;
 if (g->sector->lightlevel <= g->minlight)
 {
     g->sector->lightlevel += GLOWSPEED;
     g->direction = 1;
 }
 break;

      case 1:

 g->sector->lightlevel += GLOWSPEED;
 if (g->sector->lightlevel >= g->maxlight)
 {
     g->sector->lightlevel -= GLOWSPEED;
     g->direction = -1;
 }
 break;
    }
}
