
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* mouse; TYPE_1__* joypad; } ;
typedef TYPE_2__ gx_input_t ;
struct TYPE_4__ {int (* destroy ) () ;} ;


 int free (TYPE_2__*) ;
 int stub1 () ;

__attribute__((used)) static void gx_input_free_input(void *data)
{
   gx_input_t *gx = (gx_input_t*)data;

   if (!gx)
      return;

   if (gx->joypad)
      gx->joypad->destroy();




   free(gx);
}
