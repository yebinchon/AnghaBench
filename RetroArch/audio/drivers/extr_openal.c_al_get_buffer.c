
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t res_ptr; int * res_buf; scalar_t__ nonblock; } ;
typedef TYPE_1__ al_t ;
typedef int ALuint ;


 scalar_t__ al_unqueue_buffers (TYPE_1__*) ;
 int retro_sleep (int) ;

__attribute__((used)) static bool al_get_buffer(al_t *al, ALuint *buffer)
{
   if (!al->res_ptr)
   {
      for (;;)
      {
         if (al_unqueue_buffers(al))
            break;

         if (al->nonblock)
            return 0;


         retro_sleep(1);
      }
   }

   *buffer = al->res_buf[--al->res_ptr];
   return 1;
}
