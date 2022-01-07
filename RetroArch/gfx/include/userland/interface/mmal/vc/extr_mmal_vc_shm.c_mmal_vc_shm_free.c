
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ handle; } ;
typedef TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;
typedef int MMAL_STATUS_T ;


 int MMAL_EINVAL ;
 int MMAL_SUCCESS ;
 TYPE_1__* mmal_vc_payload_list_find_mem (int *) ;
 int mmal_vc_payload_list_release (TYPE_1__*) ;
 int vcsm_free (unsigned int) ;

MMAL_STATUS_T mmal_vc_shm_free(uint8_t *mem)
{
   MMAL_VC_PAYLOAD_ELEM_T *payload_elem = mmal_vc_payload_list_find_mem(mem);
   if (payload_elem)
   {



      mmal_vc_payload_list_release(payload_elem);
      return MMAL_SUCCESS;
   }

   return MMAL_EINVAL;
}
