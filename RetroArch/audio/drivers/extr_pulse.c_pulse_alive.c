
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ pa_t ;



__attribute__((used)) static bool pulse_alive(void *data)
{
   pa_t *pa = (pa_t*)data;

   if (!pa)
      return 0;
   return !pa->is_paused;
}
