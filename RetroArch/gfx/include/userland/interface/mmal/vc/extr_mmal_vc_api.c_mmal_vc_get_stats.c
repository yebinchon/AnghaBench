
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int reset; int stats; int header; } ;
typedef TYPE_1__ mmal_worker_stats ;
typedef int MMAL_VC_STATS_T ;
typedef scalar_t__ MMAL_STATUS_T ;


 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_GET_STATS ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_1__*,size_t*,int ) ;
 int vcos_assert (int) ;

MMAL_STATUS_T mmal_vc_get_stats(MMAL_VC_STATS_T *stats, int reset)
{
   mmal_worker_stats msg;
   size_t len = sizeof(msg);
   msg.reset = reset;

   MMAL_STATUS_T status = mmal_vc_sendwait_message(mmal_vc_get_client(),
                                                   &msg.header, sizeof(msg),
                                                   MMAL_WORKER_GET_STATS,
                                                   &msg, &len, MMAL_FALSE);

   if (status == MMAL_SUCCESS)
   {
      vcos_assert(len == sizeof(msg));
      *stats = msg.stats;
   }
   return status;
}
