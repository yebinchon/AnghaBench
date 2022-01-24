#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int tracks_num; int /*<<< orphan*/ * tracks; TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {scalar_t__ index; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_7__ {TYPE_3__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC3( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   for(; p_ctx->tracks_num > 0; p_ctx->tracks_num--)
      FUNC1(p_ctx, p_ctx->tracks[p_ctx->tracks_num-1]);

   if(module->index)
      FUNC2(module->index);

   FUNC0(module);

   return VC_CONTAINER_SUCCESS;
}