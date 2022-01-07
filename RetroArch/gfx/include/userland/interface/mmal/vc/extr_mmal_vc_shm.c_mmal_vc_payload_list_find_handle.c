
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int lock; TYPE_1__* list; } ;
struct TYPE_4__ {void* vc_handle; int in_use; } ;
typedef TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;


 unsigned int MMAL_VC_PAYLOAD_ELEM_MAX ;
 TYPE_3__ mmal_vc_payload_list ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static MMAL_VC_PAYLOAD_ELEM_T *mmal_vc_payload_list_find_handle(uint8_t *mem)
{
   MMAL_VC_PAYLOAD_ELEM_T *elem = 0;
   unsigned int i;

   vcos_mutex_lock(&mmal_vc_payload_list.lock);
   for (i = 0; i < MMAL_VC_PAYLOAD_ELEM_MAX; i++)
   {
      if (!mmal_vc_payload_list.list[i].in_use)
         continue;
      if (mmal_vc_payload_list.list[i].vc_handle != (void *)mem)
         continue;
      elem = &mmal_vc_payload_list.list[i];
      break;
   }
   vcos_mutex_unlock(&mmal_vc_payload_list.lock);

   return elem;
}
