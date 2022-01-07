
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int req ;
typedef int reply ;
typedef int mmal_worker_msg_header ;
struct TYPE_3__ {unsigned int time; } ;
typedef TYPE_1__ mmal_worker_drm_get_time_reply ;
typedef scalar_t__ MMAL_STATUS_T ;


 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_DRM_GET_TIME ;
 int mmal_vc_deinit () ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_init () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_1__*,size_t*,int ) ;

int mmal_vc_drm_get_time(unsigned int * time)
{
   MMAL_STATUS_T status;
   mmal_worker_msg_header req;
   mmal_worker_drm_get_time_reply reply;
   size_t len = sizeof(reply);
   status = mmal_vc_init();
   if (status != MMAL_SUCCESS) return status;
   status = mmal_vc_sendwait_message(mmal_vc_get_client(),
                                     &req, sizeof(req),
                                     MMAL_WORKER_DRM_GET_TIME,
                                     &reply, &len, MMAL_FALSE);
   *time = reply.time;
   mmal_vc_deinit();
   return status;
}
