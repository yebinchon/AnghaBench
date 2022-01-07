
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ uwp_input_t ;
struct TYPE_4__ {int (* destroy ) () ;} ;


 int free (TYPE_2__*) ;
 int stub1 () ;

__attribute__((used)) static void uwp_input_free_input(void *data)
{
   uwp_input_t *uwp = (uwp_input_t*)data;

   if (!uwp)
      return;

   if (uwp->joypad)
      uwp->joypad->destroy();

   free(uwp);
}
