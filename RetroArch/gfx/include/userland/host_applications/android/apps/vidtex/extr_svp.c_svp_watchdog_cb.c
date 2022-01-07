
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sema; TYPE_1__* video_output; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ SVP_T ;


 int LOG_ERROR (char*,int ,int ) ;
 int SVP_STOP_ERROR ;
 int SVP_WATCHDOG_TIMEOUT_MS ;
 int svp_set_stop (TYPE_2__*,int ) ;
 int vcos_semaphore_post (int *) ;

__attribute__((used)) static void svp_watchdog_cb(void *ctx)
{
   SVP_T *svp = ctx;
   LOG_ERROR("%s: no frames received for %d ms, aborting", svp->video_output->name,
             SVP_WATCHDOG_TIMEOUT_MS);
   svp_set_stop(svp, SVP_STOP_ERROR);
   vcos_semaphore_post(&svp->sema);
}
