#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ scheduling; } ;
typedef  int /*<<< orphan*/  MMAL_STATUS_T ;
typedef  int /*<<< orphan*/  MMAL_CLOCK_T ;
typedef  TYPE_1__ MMAL_CLOCK_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  MMAL_SUCCESS ; 
 int /*<<< orphan*/  MMAL_TIME_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

MMAL_STATUS_T FUNC3(MMAL_CLOCK_T *clock)
{
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)clock;

   FUNC0(private);
   if (private->scheduling)
      FUNC2(private, MMAL_TIME_UNKNOWN);
   FUNC1(private);

   return MMAL_SUCCESS;
}