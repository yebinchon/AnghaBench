#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  MMAL_EIO ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 

MMAL_STATUS_T FUNC3(void)
{
#ifdef ENABLE_MMAL_VCSM
   if (vcsm_init() != 0)
   {
      LOG_ERROR("could not initialize vc shared memory service");
      return MMAL_EIO;
   }
#endif /* ENABLE_MMAL_VCSM */

   FUNC1();
   return MMAL_SUCCESS;
}