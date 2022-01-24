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
typedef  int /*<<< orphan*/  VCOS_STATUS_T ;
typedef  int /*<<< orphan*/  VCOS_ONCE_T ;

/* Variables and functions */
#define  EINVAL 128 
 int /*<<< orphan*/  VCOS_EACCESS ; 
 int /*<<< orphan*/  VCOS_EINVAL ; 
 int /*<<< orphan*/  VCOS_SUCCESS ; 
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ *,void (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

VCOS_STATUS_T FUNC2(VCOS_ONCE_T *once_control,
                        void (*init_routine)(void))
{
   int rc = FUNC0(once_control, init_routine);
   if (rc != 0)
   {
      switch (errno)
      {
      case EINVAL:
         return VCOS_EINVAL;
      default:
         FUNC1(0);
         return VCOS_EACCESS;
      }
   }
   else
   {
      return VCOS_SUCCESS;
   }
}