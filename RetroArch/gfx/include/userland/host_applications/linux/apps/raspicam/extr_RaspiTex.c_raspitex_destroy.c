
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int completed_sem; int start_sem; } ;
struct TYPE_7__ {int (* close ) (TYPE_3__*) ;int (* destroy_native_window ) (TYPE_3__*) ;} ;
struct TYPE_9__ {TYPE_2__ capture; TYPE_1__ ops; int * preview_queue; int * preview_pool; } ;
typedef TYPE_3__ RASPITEX_STATE ;


 int VCOS_FUNCTION ;
 int mmal_pool_destroy (int *) ;
 int mmal_queue_destroy (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int vcos_log_trace (char*,int ) ;
 int vcos_semaphore_delete (int *) ;

void raspitex_destroy(RASPITEX_STATE *state)
{
   vcos_log_trace("%s", VCOS_FUNCTION);
   if (state->preview_pool)
   {
      mmal_pool_destroy(state->preview_pool);
      state->preview_pool = ((void*)0);
   }

   if (state->preview_queue)
   {
      mmal_queue_destroy(state->preview_queue);
      state->preview_queue = ((void*)0);
   }

   if (state->ops.destroy_native_window)
      state->ops.destroy_native_window(state);

   if (state->ops.close)
      state->ops.close(state);

   vcos_semaphore_delete(&state->capture.start_sem);
   vcos_semaphore_delete(&state->capture.completed_sem);
}
