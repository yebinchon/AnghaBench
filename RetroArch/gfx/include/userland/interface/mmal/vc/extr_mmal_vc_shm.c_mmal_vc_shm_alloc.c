
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {void* vc_handle; void* handle; int * mem; } ;
typedef TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;


 int LOG_ERROR (char*,...) ;
 int MMAL_PARAM_UNUSED (scalar_t__) ;
 int VCSM_CACHE_TYPE_HOST ;
 TYPE_1__* mmal_vc_payload_list_get () ;
 int mmal_vc_payload_list_release (TYPE_1__*) ;
 int vcsm_free (unsigned int) ;
 scalar_t__ vcsm_lock (unsigned int) ;
 unsigned int vcsm_malloc_cache (scalar_t__,int ,char*) ;
 int vcsm_unlock_hdl (unsigned int) ;
 unsigned int vcsm_vc_hdl_from_hdl (unsigned int) ;

uint8_t *mmal_vc_shm_alloc(uint32_t size)
{
   uint8_t *mem = ((void*)0);

   MMAL_VC_PAYLOAD_ELEM_T *payload_elem = mmal_vc_payload_list_get();
   if (!payload_elem)
   {
      LOG_ERROR("could not get a free slot in the payload list");
      return ((void*)0);
   }
   MMAL_PARAM_UNUSED(size);
   mmal_vc_payload_list_release(payload_elem);


   return mem;
}
