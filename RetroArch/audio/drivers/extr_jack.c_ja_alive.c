
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ jack_t ;



__attribute__((used)) static bool ja_alive(void *data)
{
   jack_t *jd = (jack_t*)data;
   if (!jd)
      return 0;
   return !jd->is_paused;
}
