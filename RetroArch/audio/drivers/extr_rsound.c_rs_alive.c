
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ rsd_t ;



__attribute__((used)) static bool rs_alive(void *data)
{
   rsd_t *rsd = (rsd_t*)data;
   if (rsd)
      return !rsd->is_paused;
   return 0;
}
