
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref_count; } ;
typedef TYPE_1__ BRCMJPEG_T ;


 int LOCK_COMP (TYPE_1__*) ;
 int UNLOCK_COMP (TYPE_1__*) ;

void brcmjpeg_acquire(BRCMJPEG_T *ctx)
{
   LOCK_COMP(ctx);
   ctx->ref_count++;
   UNLOCK_COMP(ctx);
}
