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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_PACKET_T ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS ; 
 scalar_t__ VC_CONTAINER_ERROR_ABORTED ; 
 int /*<<< orphan*/  VC_CONTAINER_READ_TIMEOUT_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC2(VC_CONTAINER_T *p_ctx,
                                               VC_CONTAINER_PACKET_T *p_packet,
                                               uint32_t flags)
{
   VC_CONTAINER_STATUS_T status;

   status = FUNC1(p_ctx, p_packet, flags);

   /* The ..._ABORTED status corresponds to a timeout waiting for data */
   if (status == VC_CONTAINER_ERROR_ABORTED)
   {
      /* So switch to blocking temporarily to wait for some */
      (void)FUNC0(p_ctx, VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, VC_CONTAINER_READ_TIMEOUT_BLOCK);
      status = FUNC1(p_ctx, p_packet, flags);
      (void)FUNC0(p_ctx, VC_CONTAINER_CONTROL_IO_SET_READ_TIMEOUT_MS, 0);
   }

   return status;
}