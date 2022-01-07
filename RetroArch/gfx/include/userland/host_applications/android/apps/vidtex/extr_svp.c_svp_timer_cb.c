
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sema; } ;
typedef TYPE_1__ SVP_T ;


 int SVP_STOP_TIMEUP ;
 int svp_set_stop (TYPE_1__*,int ) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void svp_timer_cb(void *ctx)
{
   SVP_T *svp = ctx;
   svp_set_stop(svp, SVP_STOP_TIMEUP);
   vcos_semaphore_post(&svp->sema);
}
