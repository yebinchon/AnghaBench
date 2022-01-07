
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int req ;
typedef int reply ;
struct TYPE_3__ {int header; int alloc_size; } ;
typedef TYPE_1__ mmal_worker_lmk ;
typedef int MMAL_STATUS_T ;


 int MMAL_FALSE ;
 int MMAL_WORKER_LMK ;
 int mmal_vc_get_client () ;
 int mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_1__*,size_t*,int ) ;

MMAL_STATUS_T mmal_vc_lmk(uint32_t alloc_size)
{
   MMAL_STATUS_T status;
   mmal_worker_lmk req;
   mmal_worker_lmk reply;
   size_t len = sizeof(reply);

   req.alloc_size = alloc_size;

   status = mmal_vc_sendwait_message(mmal_vc_get_client(),
                                     &req.header, sizeof(req),
                                     MMAL_WORKER_LMK,
                                     &reply, &len, MMAL_FALSE);
   return status;
}
