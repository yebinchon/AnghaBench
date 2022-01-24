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
typedef  int uint32_t ;
typedef  scalar_t__ MMAL_STATUS_T ;

/* Variables and functions */
 scalar_t__ MMAL_SUCCESS ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__,char*) ; 
 char* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC4(int argc, const char **argv)
{
   uint32_t maj = UINT_MAX, min = UINT_MAX, minimum;
   MMAL_STATUS_T st = FUNC2(&maj, &min, &minimum);
   (void)argc; (void)argv;
   if (st == MMAL_SUCCESS)
   {
      FUNC3("version %d.%02d (min %d)\n", maj, min, minimum);
      return 0;
   }
   else
   {
      FUNC0(stderr, "error getting version (%li:%s)\n", st, FUNC1(st));
      return -1;
   }
}