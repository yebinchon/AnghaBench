#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {int /*<<< orphan*/  packet_size; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  guid_null ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC3( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;

   FUNC0(p_ctx, &guid_null, "File ID");
   FUNC2(p_ctx, 0, "File Size");
   FUNC2(p_ctx, 0, "Creation Date");
   FUNC2(p_ctx, 0, "Data Packets Count");
   FUNC2(p_ctx, 0, "Play Duration");
   FUNC2(p_ctx, 0, "Send Duration");
   FUNC2(p_ctx, 0, "Preroll");
   FUNC1(p_ctx, 0, "Flags");
   FUNC1(p_ctx, module->packet_size, "Minimum Data Packet Size");
   FUNC1(p_ctx, module->packet_size, "Maximum Data Packet Size");
   FUNC1(p_ctx, 0, "Maximum Bitrate");

   return VC_CONTAINER_SUCCESS;
}