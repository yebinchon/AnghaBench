
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ ps3_input_t ;
struct TYPE_3__ {int (* destroy ) () ;} ;


 int cellMouseEnd () ;
 int free (void*) ;
 int stub1 () ;

__attribute__((used)) static void ps3_input_free_input(void *data)
{
   ps3_input_t *ps3 = (ps3_input_t*)data;

   if (!ps3)
      return;

   if (ps3->joypad)
      ps3->joypad->destroy();




   free(data);
}
