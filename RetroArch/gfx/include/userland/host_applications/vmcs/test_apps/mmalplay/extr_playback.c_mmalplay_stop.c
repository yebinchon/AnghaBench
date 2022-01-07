
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stop; int event; } ;
typedef TYPE_1__ MMALPLAY_T ;


 int vcos_semaphore_post (int *) ;

void mmalplay_stop(MMALPLAY_T *ctx)
{
   ctx->stop = 1;
   vcos_semaphore_post(&ctx->event);
}
