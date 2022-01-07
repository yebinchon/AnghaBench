
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ handle; int * mem; } ;
typedef TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;


 int MMAL_PARAM_UNUSED (int ) ;
 int assert (int ) ;
 TYPE_1__* mmal_vc_payload_list_find_handle (int *) ;
 void* vcsm_lock (unsigned int) ;

uint8_t *mmal_vc_shm_lock(uint8_t *mem, uint32_t workaround)
{

   MMAL_VC_PAYLOAD_ELEM_T *elem = mmal_vc_payload_list_find_handle(mem);
   MMAL_PARAM_UNUSED(workaround);

   if (elem) {
      mem = elem->mem;





   }

   return mem;
}
