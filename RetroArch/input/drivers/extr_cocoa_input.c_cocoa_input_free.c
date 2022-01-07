
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* sec_joypad; TYPE_1__* joypad; } ;
typedef TYPE_3__ cocoa_input_data_t ;
struct TYPE_6__ {int (* destroy ) () ;} ;
struct TYPE_5__ {int (* destroy ) () ;} ;


 unsigned int MAX_KEYS ;
 scalar_t__* apple_key_state ;
 int free (TYPE_3__*) ;
 int stub1 () ;
 int stub2 () ;

__attribute__((used)) static void cocoa_input_free(void *data)
{
   unsigned i;
   cocoa_input_data_t *apple = (cocoa_input_data_t*)data;

   if (!apple || !data)
      return;

   if (apple->joypad)
      apple->joypad->destroy();

   if (apple->sec_joypad)
       apple->sec_joypad->destroy();

   for (i = 0; i < MAX_KEYS; i++)
      apple_key_state[i] = 0;

   free(apple);
}
