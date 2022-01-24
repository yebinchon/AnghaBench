#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ VCHIQ_STATUS_T ;
struct TYPE_2__ {int iters; } ;

/* Variables and functions */
 scalar_t__ VCHIQ_ERROR ; 
 scalar_t__ VCHIQ_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__ g_params ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static VCHIQ_STATUS_T
FUNC2(void)
{
   int i;
   FUNC1("Functional test - iters:%d\n", g_params.iters);
   for (i = 0; i < g_params.iters; i++)
   {
      FUNC1("======== iteration %d ========\n", i+1);

      if (FUNC0() != VCHIQ_SUCCESS)
         return VCHIQ_ERROR;
   }
   return VCHIQ_SUCCESS;
}