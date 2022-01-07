
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {unsigned int handle; scalar_t__ status; int header; int op; } ;
typedef TYPE_1__ mmal_worker_opaque_allocator ;
typedef scalar_t__ MMAL_STATUS_T ;


 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_OPAQUE_ALLOCATOR ;
 int MMAL_WORKER_OPAQUE_MEM_ACQUIRE ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_1__*,size_t*,int ) ;

MMAL_STATUS_T mmal_vc_opaque_acquire(unsigned int handle)
{
   MMAL_STATUS_T ret;
   mmal_worker_opaque_allocator msg;
   size_t len = sizeof(msg);
   msg.handle = handle;
   msg.op = MMAL_WORKER_OPAQUE_MEM_ACQUIRE;
   ret = mmal_vc_sendwait_message(mmal_vc_get_client(),
                                  &msg.header, sizeof(msg),
                                  MMAL_WORKER_OPAQUE_ALLOCATOR,
                                  &msg, &len, MMAL_FALSE);
   if (ret == MMAL_SUCCESS)
      ret = msg.status;
   return ret;
}
