
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; int rd; } ;
typedef TYPE_1__ rsd_t ;


 scalar_t__ rsd_start (int ) ;

__attribute__((used)) static bool rs_start(void *data, bool is_shutdown)
{
   rsd_t *rsd = (rsd_t*)data;
   if (rsd_start(rsd->rd) < 0)
      return 0;
   rsd->is_paused = 0;

   return 1;
}
