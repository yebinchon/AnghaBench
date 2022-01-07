
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; scalar_t__ ref_count; } ;
typedef TYPE_1__ BRCMJPEG_T ;


 scalar_t__ BRCMJPEG_TYPE_ENCODER ;
 int LOCK () ;
 int LOCK_COMP (TYPE_1__*) ;
 int UNLOCK () ;
 int UNLOCK_COMP (TYPE_1__*) ;
 int * brcmjpeg_decoder ;
 int brcmjpeg_destroy (TYPE_1__*) ;
 int * brcmjpeg_encoder ;

void brcmjpeg_release(BRCMJPEG_T *ctx)
{
   LOCK_COMP(ctx);
   if (--ctx->ref_count)
   {
      UNLOCK_COMP(ctx);
      return;
   }

   LOCK();
   if (ctx->type == BRCMJPEG_TYPE_ENCODER)
      brcmjpeg_encoder = ((void*)0);
   else
      brcmjpeg_decoder = ((void*)0);
   UNLOCK();
   UNLOCK_COMP(ctx);

   brcmjpeg_destroy(ctx);
   return;
}
