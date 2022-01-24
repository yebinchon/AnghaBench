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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  MMAL_CLOCK_T ;
typedef  int /*<<< orphan*/  MMAL_CLOCK_PRIVATE_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int64_t FUNC3(MMAL_CLOCK_T *clock)
{
   int64_t media_time;
   MMAL_CLOCK_PRIVATE_T *private = (MMAL_CLOCK_PRIVATE_T*)clock;

   FUNC0(private);
   media_time = FUNC2(private);
   FUNC1(private);

   return media_time;
}