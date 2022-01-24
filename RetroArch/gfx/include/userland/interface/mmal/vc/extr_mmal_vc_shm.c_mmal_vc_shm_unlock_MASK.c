#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  mem; scalar_t__ vc_handle; } ;
typedef  TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

uint8_t *FUNC3(uint8_t *mem, uint32_t *length, uint32_t workaround)
{
   /* Zero copy stuff */
   MMAL_VC_PAYLOAD_ELEM_T *elem = FUNC1(mem);
   FUNC0(workaround);

   if (elem)
   {
      *length = 0;
      mem = (uint8_t *)elem->vc_handle;
#ifdef ENABLE_MMAL_VCSM
      vcsm_unlock_ptr(elem->mem);
#endif /* ENABLE_MMAL_VCSM */
   }

   return mem;
}