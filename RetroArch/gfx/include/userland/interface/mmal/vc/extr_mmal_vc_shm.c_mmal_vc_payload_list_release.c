
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct TYPE_4__ {scalar_t__ in_use; scalar_t__ mem; scalar_t__ vc_handle; scalar_t__ handle; } ;
typedef TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;


 TYPE_3__ mmal_vc_payload_list ;
 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static void mmal_vc_payload_list_release(MMAL_VC_PAYLOAD_ELEM_T *elem)
{
   vcos_mutex_lock(&mmal_vc_payload_list.lock);
   elem->handle = elem->vc_handle = 0;
   elem->mem = 0;
   elem->in_use = 0;
   vcos_mutex_unlock(&mmal_vc_payload_list.lock);
}
