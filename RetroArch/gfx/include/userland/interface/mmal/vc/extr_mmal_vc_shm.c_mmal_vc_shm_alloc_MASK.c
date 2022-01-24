#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_4__ {void* vc_handle; void* handle; int /*<<< orphan*/ * mem; } ;
typedef  TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  VCSM_CACHE_TYPE_HOST ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int) ; 
 scalar_t__ FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 unsigned int FUNC8 (unsigned int) ; 

uint8_t *FUNC9(uint32_t size)
{
   uint8_t *mem = NULL;

   MMAL_VC_PAYLOAD_ELEM_T *payload_elem = FUNC2();
   if (!payload_elem)
   {
      FUNC0("could not get a free slot in the payload list");
      return NULL;
   }

#ifdef ENABLE_MMAL_VCSM
   unsigned int vcsm_handle = vcsm_malloc_cache(size, VCSM_CACHE_TYPE_HOST, "mmal_vc_port buffer");
   unsigned int vc_handle = vcsm_vc_hdl_from_hdl(vcsm_handle);
   mem = (uint8_t *)vcsm_lock( vcsm_handle );
   if (!mem || !vc_handle)
   {
      LOG_ERROR("could not allocate %i bytes of shared memory (handle %x)",
                (int)size, vcsm_handle);
      if (mem)
         vcsm_unlock_hdl(vcsm_handle);
      if (vcsm_handle)
         vcsm_free(vcsm_handle);
      mmal_vc_payload_list_release(payload_elem);
      return NULL;
   }

   /* The memory area is automatically mem-locked by vcsm's fault
    * handler when it is next used. So leave it unlocked until it
    * is needed.
    */
   vcsm_unlock_hdl(vcsm_handle);

   payload_elem->mem = mem;
   payload_elem->handle = (void *)vcsm_handle;
   payload_elem->vc_handle = (void *)vc_handle;
#else /* ENABLE_MMAL_VCSM */
   FUNC1(size);
   FUNC3(payload_elem);
#endif /* ENABLE_MMAL_VCSM */

   return mem;
}