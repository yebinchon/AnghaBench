
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* joypad; } ;
typedef TYPE_2__ dos_input_t ;
struct TYPE_3__ {int (* destroy ) () ;} ;


 int dos_keyboard_free () ;
 int free (void*) ;
 int stub1 () ;

__attribute__((used)) static void dos_input_free_input(void *data)
{
   dos_input_t *dos = (dos_input_t*)data;

   if (dos && dos->joypad)
      dos->joypad->destroy();

   dos_keyboard_free();

   if (data)
      free(data);
}
