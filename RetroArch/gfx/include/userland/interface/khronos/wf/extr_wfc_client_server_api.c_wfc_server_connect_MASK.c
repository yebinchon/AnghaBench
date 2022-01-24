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
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 int /*<<< orphan*/  VCOS_LOG_CATEGORY ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_CLIENT_SERVER_API_LOGLEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

VCOS_STATUS_T FUNC5(void)
{
   VCOS_STATUS_T status;

   FUNC1(VCOS_LOG_CATEGORY, WFC_CLIENT_SERVER_API_LOGLEVEL);
   FUNC0("wfccsapi", VCOS_LOG_CATEGORY);

   status = FUNC4();

   FUNC2("%s: result %d", VCOS_FUNCTION, status);

   if (status != VCOS_SUCCESS)
   {
      FUNC3(VCOS_LOG_CATEGORY);
   }

   return status;
}