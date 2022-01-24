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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  result ;
typedef  int /*<<< orphan*/  WFCNativeStreamType ;
typedef  scalar_t__ VCOS_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VCOS_FUNCTION ; 
 scalar_t__ VCOS_SUCCESS ; 
 int /*<<< orphan*/  WFC_IPC_MSG_SS_IS_IN_USE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,size_t*) ; 

bool FUNC2(WFCNativeStreamType stream)
{
   VCOS_STATUS_T status;
   uint32_t result = 0;
   size_t result_len = sizeof(result);

   FUNC0("%s: stream 0x%x", VCOS_FUNCTION, stream);

   status = FUNC1(WFC_IPC_MSG_SS_IS_IN_USE, stream, &result, &result_len);

   FUNC0("%s: status 0x%x, result %u", VCOS_FUNCTION, status, result);

   if (status != VCOS_SUCCESS)
      result = 0;

   return result != 0;
}