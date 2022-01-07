
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int mem; scalar_t__ vc_handle; } ;
typedef TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;


 int MMAL_PARAM_UNUSED (scalar_t__) ;
 TYPE_1__* mmal_vc_payload_list_find_mem (int *) ;
 int vcsm_unlock_ptr (int ) ;

uint8_t *mmal_vc_shm_unlock(uint8_t *mem, uint32_t *length, uint32_t workaround)
{

   MMAL_VC_PAYLOAD_ELEM_T *elem = mmal_vc_payload_list_find_mem(mem);
   MMAL_PARAM_UNUSED(workaround);

   if (elem)
   {
      *length = 0;
      mem = (uint8_t *)elem->vc_handle;



   }

   return mem;
}
