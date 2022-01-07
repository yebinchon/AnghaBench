
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nonblock; } ;
typedef TYPE_1__ pa_t ;



__attribute__((used)) static void pulse_set_nonblock_state(void *data, bool state)
{
   pa_t *pa = (pa_t*)data;
   if (pa)
      pa->nonblock = state;
}
