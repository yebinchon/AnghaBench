
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ xa_t ;



__attribute__((used)) static bool xa_start(void *data, bool is_shutdown)
{
   xa_t *xa = (xa_t*)data;
   xa->is_paused = 0;
   return 1;
}
