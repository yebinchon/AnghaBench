#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint32_t ;
struct TYPE_10__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_11__ {void* header_list_size; void* header_list_offset; int /*<<< orphan*/  null_io; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_9__ {TYPE_3__* module; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_2__*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC4( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status;
   uint32_t header_list_offset, header_list_size = 0;

   /* Write the header list chunk ('hdrl') */
   if(!FUNC3(p_ctx, &module->null_io))
   {
      status = FUNC1(p_ctx, 0);
      if (status != VC_CONTAINER_SUCCESS) return status;
      header_list_size = FUNC0(p_ctx) - 8;
   }
   FUNC2(p_ctx, &module->null_io);

   header_list_offset = FUNC0(p_ctx);
   status = FUNC1(p_ctx, header_list_size);
   if (status == VC_CONTAINER_SUCCESS && !module->header_list_offset)
   {
      module->header_list_offset = header_list_offset;
      module->header_list_size = header_list_size;
   }

   return status;
}