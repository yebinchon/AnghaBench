
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblock; } ;
typedef TYPE_1__ al_t ;



__attribute__((used)) static void al_set_nonblock_state(void *data, bool state)
{
   al_t *al = (al_t*)data;
   if (al)
      al->nonblock = state;
}
