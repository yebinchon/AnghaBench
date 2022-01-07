
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int created; int video_output; scalar_t__ connection; int thread; int sema; int timer; int wd_timer; } ;
typedef TYPE_1__ SVP_T ;


 int SVP_CREATED_THREAD ;
 int SVP_STOP_USER ;
 int mmal_connection_disable (scalar_t__) ;
 int mmal_port_disable (int ) ;
 int svp_set_stop (TYPE_1__*,int ) ;
 int vcos_semaphore_post (int *) ;
 int vcos_thread_join (int *,int *) ;
 int vcos_timer_cancel (int *) ;

void svp_stop(SVP_T *svp)
{
   vcos_timer_cancel(&svp->wd_timer);
   vcos_timer_cancel(&svp->timer);


   if (svp->created & SVP_CREATED_THREAD)
   {
      svp_set_stop(svp, SVP_STOP_USER);
      vcos_semaphore_post(&svp->sema);
      vcos_thread_join(&svp->thread, ((void*)0));
      svp->created &= ~SVP_CREATED_THREAD;
   }

   if (svp->connection)
   {
      mmal_connection_disable(svp->connection);
   }

   mmal_port_disable(svp->video_output);
}
