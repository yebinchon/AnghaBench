
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ VCOS_STATUS_T ;
struct TYPE_10__ {unsigned int duration_ms; } ;
struct TYPE_9__ {scalar_t__ video_frame_count; } ;
struct TYPE_11__ {int wd_timer; int timer; TYPE_2__ opts; scalar_t__ camera; int created; int thread; TYPE_1__ stats; int video_output; scalar_t__ connection; } ;
typedef TYPE_3__ SVP_T ;
typedef int MMAL_STATUS_T ;


 int CHECK_STATUS (int ,char*) ;
 int MMAL_ENOMEM ;
 int MMAL_SUCCESS ;
 unsigned int SVP_CAMERA_DURATION_MS ;
 int SVP_CREATED_THREAD ;
 unsigned int SVP_WATCHDOG_TIMEOUT_MS ;
 scalar_t__ VCOS_SUCCESS ;
 int mmal_connection_enable (scalar_t__) ;
 int svp_bh_output_cb ;
 int svp_port_enable (TYPE_3__*,int ,int ) ;
 int svp_reset_stop (TYPE_3__*) ;
 int svp_stop (TYPE_3__*) ;
 int svp_worker ;
 scalar_t__ vcos_thread_create (int *,char*,int *,int ,TYPE_3__*) ;
 int vcos_timer_set (int *,unsigned int) ;

int svp_start(SVP_T *svp)
{
   MMAL_STATUS_T st;
   VCOS_STATUS_T vst;


   svp_stop(svp);


   svp_reset_stop(svp);

   if (svp->connection)
   {

      st = mmal_connection_enable(svp->connection);
      CHECK_STATUS(st, "Failed to create connection");
   }


   st = svp_port_enable(svp, svp->video_output, svp_bh_output_cb);
   CHECK_STATUS(st, "Failed to enable output port");


   svp->stats.video_frame_count = 0;


   vst = vcos_thread_create(&svp->thread, "svp-worker", ((void*)0), svp_worker, svp);
   CHECK_STATUS((vst == VCOS_SUCCESS ? MMAL_SUCCESS : MMAL_ENOMEM), "Failed to create connection");

   svp->created |= SVP_CREATED_THREAD;


   if (svp->camera)
   {
      unsigned ms = svp->opts.duration_ms;
      vcos_timer_set(&svp->timer, ((ms == 0) ? SVP_CAMERA_DURATION_MS : ms));
   }


   vcos_timer_set(&svp->wd_timer, SVP_WATCHDOG_TIMEOUT_MS);

   return 0;

error:
   return -1;
}
