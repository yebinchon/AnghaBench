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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {scalar_t__ handle; int /*<<< orphan*/ * mem; } ;
typedef  TYPE_1__ MMAL_VC_PAYLOAD_ELEM_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (unsigned int) ; 

uint8_t *FUNC4(uint8_t *mem, uint32_t workaround)
{
   /* Zero copy stuff */
   MMAL_VC_PAYLOAD_ELEM_T *elem = FUNC2(mem);
   FUNC0(workaround);

   if (elem) {
      mem = elem->mem;
#ifdef ENABLE_MMAL_VCSM
      void *p = vcsm_lock((unsigned int)elem->handle);
      if (!p)
         assert(0);
#endif /* ENABLE_MMAL_VCSM */
   }

   return mem;
}