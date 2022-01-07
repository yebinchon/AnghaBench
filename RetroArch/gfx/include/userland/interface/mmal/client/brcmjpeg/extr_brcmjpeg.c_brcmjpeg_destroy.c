
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sema; int process_lock; int lock; scalar_t__ mmal; } ;
typedef TYPE_1__ BRCMJPEG_T ;


 int free (TYPE_1__*) ;
 int mmal_wrapper_destroy (scalar_t__) ;
 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;

__attribute__((used)) static void brcmjpeg_destroy(BRCMJPEG_T *ctx)
{
   if (ctx->mmal)
      mmal_wrapper_destroy(ctx->mmal);
   vcos_mutex_delete(&ctx->lock);
   vcos_mutex_delete(&ctx->process_lock);
   vcos_semaphore_delete(&ctx->sema);
   free(ctx);
}
