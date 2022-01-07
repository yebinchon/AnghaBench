
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int msg ;
struct TYPE_3__ {int handle; int header; int description; int op; } ;
typedef TYPE_1__ mmal_worker_opaque_allocator ;
typedef scalar_t__ MMAL_STATUS_T ;
typedef int MMAL_OPAQUE_IMAGE_HANDLE_T ;


 int MMAL_FALSE ;
 scalar_t__ MMAL_SUCCESS ;
 int MMAL_WORKER_OPAQUE_ALLOCATOR_DESC ;
 int MMAL_WORKER_OPAQUE_MEM_ALLOC ;
 int mmal_vc_get_client () ;
 scalar_t__ mmal_vc_sendwait_message (int ,int *,int,int ,TYPE_1__*,size_t*,int ) ;
 int vcos_safe_strcpy (int ,char const*,int,int ) ;

MMAL_OPAQUE_IMAGE_HANDLE_T mmal_vc_opaque_alloc_desc(const char *description)
{
   MMAL_STATUS_T ret;
   MMAL_OPAQUE_IMAGE_HANDLE_T h = 0;
   mmal_worker_opaque_allocator msg;
   size_t len = sizeof(msg);
   msg.op = MMAL_WORKER_OPAQUE_MEM_ALLOC;
   vcos_safe_strcpy(msg.description, description, sizeof(msg.description), 0);
   ret = mmal_vc_sendwait_message(mmal_vc_get_client(),
                                  &msg.header, sizeof(msg),
                                  MMAL_WORKER_OPAQUE_ALLOCATOR_DESC,
                                  &msg, &len, MMAL_FALSE);
   if (ret == MMAL_SUCCESS)
   {
      h = msg.handle;
   }
   return h;
}
