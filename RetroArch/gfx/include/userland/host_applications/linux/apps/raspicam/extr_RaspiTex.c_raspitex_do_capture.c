
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {size_t size; int completed_sem; scalar_t__ request; int * buffer; } ;
struct TYPE_6__ {scalar_t__ (* capture ) (TYPE_3__*,int **,size_t*) ;} ;
struct TYPE_8__ {TYPE_2__ capture; TYPE_1__ ops; } ;
typedef TYPE_3__ RASPITEX_STATE ;


 scalar_t__ stub1 (TYPE_3__*,int **,size_t*) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void raspitex_do_capture(RASPITEX_STATE *state)
{
   uint8_t *buffer = ((void*)0);
   size_t size = 0;

   if (state->capture.request)
   {
      if (state->ops.capture(state, &buffer, &size) == 0)
      {

         state->capture.buffer = buffer;
         state->capture.size = size;
      }
      else
      {
         state->capture.buffer = ((void*)0);
         state->capture.size = 0;
      }

      state->capture.request = 0;
      vcos_semaphore_post(&state->capture.completed_sem);
   }
}
