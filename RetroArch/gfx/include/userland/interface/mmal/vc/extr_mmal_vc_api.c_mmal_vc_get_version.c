
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int msg ;
struct TYPE_3__ {int minimum; int minor; int major; int header; } ;
typedef TYPE_1__ mmal_worker_version ;
typedef scalar_t__ MMAL_STATUS_T ;


 scalar_t__ MMAL_EINVAL ;
 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_GET_VERSION ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_1__*,size_t*,int ) ;
 int vcos_verify (int) ;

MMAL_STATUS_T mmal_vc_get_version(uint32_t *major, uint32_t *minor, uint32_t *minimum)
{
   mmal_worker_version msg;
   size_t len = sizeof(msg);
   MMAL_STATUS_T status;

   status = mmal_vc_sendwait_message(mmal_vc_get_client(), &msg.header, sizeof(msg),
                                     MMAL_WORKER_GET_VERSION, &msg, &len, MMAL_FALSE);

   if (status != MMAL_SUCCESS)
      return status;

   if (!vcos_verify(len == sizeof(msg)))
      return MMAL_EINVAL;

   *major = msg.major;
   *minor = msg.minor;
   *minimum = msg.minimum;
   return MMAL_SUCCESS;
}
