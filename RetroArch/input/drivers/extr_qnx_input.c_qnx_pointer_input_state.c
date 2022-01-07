
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned int pointer_count; TYPE_1__* pointer; } ;
typedef TYPE_2__ qnx_input_t ;
typedef int int16_t ;
struct TYPE_4__ {int full_x; int full_y; int x; int y; } ;






__attribute__((used)) static int16_t qnx_pointer_input_state(qnx_input_t *qnx,
      unsigned idx, unsigned id, bool screen)
{
   int16_t x;
   int16_t y;

   if(screen)
   {
       x = qnx->pointer[idx].full_x;
       y = qnx->pointer[idx].full_y;
   }
   else
   {
       x = qnx->pointer[idx].x;
       y = qnx->pointer[idx].y;
   }

   switch (id)
   {
      case 129:
         return x;
      case 128:
         return y;
      case 130:
         return (idx < qnx->pointer_count)
                 && (x != -0x8000)
                 && (y != -0x8000);
   }

   return 0;
}
