#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vc_container_net_status_t ;
struct TYPE_5__ {TYPE_1__* module; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_4__ {int /*<<< orphan*/  write_capture_file; int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static size_t FUNC4(VC_CONTAINER_IO_T *p_ctx, const void *buffer, size_t size)
{
   size_t ret = FUNC3(p_ctx->module->sock, buffer, size);
   vc_container_net_status_t net_status;

   net_status = FUNC2(p_ctx->module->sock);
   p_ctx->status = FUNC1(net_status);

#ifdef IO_NET_CAPTURE_PACKETS
   if (p_ctx->status == VC_CONTAINER_SUCCESS)
      io_net_capture_write_packet(p_ctx->module->write_capture_file, (const char *)buffer, ret);
#endif

   return ret;
}