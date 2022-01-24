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
struct TYPE_5__ {int /*<<< orphan*/  status; TYPE_1__* module; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_4__ {int /*<<< orphan*/  sock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC3(VC_CONTAINER_IO_T *p_ctx, void *buffer, size_t size)
{
   size_t ret;
   vc_container_net_status_t net_status;

   ret           = FUNC1(p_ctx->module->sock, buffer, size);
   net_status    = FUNC2(p_ctx->module->sock);
   p_ctx->status = FUNC0(net_status);

   return ret;
}