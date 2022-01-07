
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int req ;
typedef int reply ;
struct TYPE_4__ {int status; } ;
typedef TYPE_1__ mmal_worker_reply ;
struct TYPE_5__ {int header; int msg; } ;
typedef TYPE_2__ mmal_worker_host_log ;
typedef int MMAL_STATUS_T ;


 int MMAL_EINVAL ;
 int MMAL_FALSE ;
 int MMAL_SUCCESS ;
 int MMAL_WORKER_HOST_LOG ;
 int mmal_vc_get_client () ;
 int mmal_vc_sendwait_message (int ,int *,scalar_t__,int ,TYPE_1__*,size_t*,int ) ;
 int vcos_assert (int) ;
 scalar_t__ vcos_min (int,size_t) ;
 size_t vcos_safe_strcpy (int ,char const*,int,int ) ;

MMAL_STATUS_T mmal_vc_host_log(const char *msg)
{
   MMAL_STATUS_T status = MMAL_EINVAL;
   if (msg)
   {
      mmal_worker_host_log req;
      mmal_worker_reply reply;
      size_t replylen = sizeof(reply);
      size_t msg_len = vcos_safe_strcpy(req.msg, msg, sizeof(req.msg), 0);


      status = mmal_vc_sendwait_message(mmal_vc_get_client(), &req.header,
            sizeof(req) - sizeof(req.msg) + vcos_min(sizeof(req.msg), msg_len + 1),
            MMAL_WORKER_HOST_LOG,
            &reply, &replylen, MMAL_FALSE);

      if (status == MMAL_SUCCESS)
      {
         vcos_assert(replylen == sizeof(reply));
         status = reply.status;
      }
   }
   return status;
}
