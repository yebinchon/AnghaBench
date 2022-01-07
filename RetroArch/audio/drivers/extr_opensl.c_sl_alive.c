
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_paused; } ;
typedef TYPE_1__ sl_t ;



__attribute__((used)) static bool sl_alive(void *data)
{
   sl_t *sl = (sl_t*)data;
   if (!sl)
      return 0;
   return !sl->is_paused;
}
