
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ wiiu_input_t ;
struct TYPE_3__ {int (* destroy ) () ;} ;


 int KBDTeardown () ;
 int free (void*) ;
 int stub1 () ;

__attribute__((used)) static void wiiu_input_free_input(void *data)
{
   wiiu_input_t *wiiu = (wiiu_input_t*)data;

   if (wiiu && wiiu->joypad)
      wiiu->joypad->destroy();

   KBDTeardown();

   free(data);
}
