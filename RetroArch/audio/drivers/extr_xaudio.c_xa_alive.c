
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ xa_t ;



__attribute__((used)) static bool xa_alive(void *data)
{
   xa_t *xa = (xa_t*)data;
   if (!xa)
      return 0;
   return !xa->is_paused;
}
