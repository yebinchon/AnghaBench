
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; int rd; } ;
typedef TYPE_1__ rsd_t ;


 int rsd_stop (int ) ;

__attribute__((used)) static bool rs_stop(void *data)
{
   rsd_t *rsd = (rsd_t*)data;
   rsd_stop(rsd->rd);
   rsd->is_paused = 1;

   return 1;
}
