#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_PACKET_T ;
struct TYPE_8__ {int b_header_done; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_6__ {TYPE_3__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC2( VC_CONTAINER_T *p_ctx,
                                               VC_CONTAINER_PACKET_T *p_packet )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   FUNC0(p_packet);

   if(!module->b_header_done)
   {
      module->b_header_done = true;
      status = FUNC1(p_ctx);
   }

   return status;
}