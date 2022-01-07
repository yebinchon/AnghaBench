
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int req ;
typedef int reply ;
struct TYPE_3__ {scalar_t__ status; scalar_t__ duration; int header; scalar_t__ mode; } ;
typedef TYPE_1__ mmal_worker_compact ;
typedef scalar_t__ MMAL_VC_COMPACT_MODE_T ;
typedef scalar_t__ MMAL_STATUS_T ;


 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_COMPACT ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_1__*,size_t*,int ) ;
 int vcos_assert (int) ;

MMAL_STATUS_T mmal_vc_compact(MMAL_VC_COMPACT_MODE_T mode, uint32_t *duration)
{
   MMAL_STATUS_T status;
   mmal_worker_compact req;
   mmal_worker_compact reply;
   size_t len = sizeof(reply);

   req.mode = (uint32_t)mode;
   status = mmal_vc_sendwait_message(mmal_vc_get_client(),
                                     &req.header, sizeof(req),
                                     MMAL_WORKER_COMPACT,
                                     &reply, &len, MMAL_FALSE);
   if (status == MMAL_SUCCESS)
   {
      vcos_assert(len == sizeof(reply));
      status = reply.status;
      *duration = reply.duration;
   }
   return status;
}
