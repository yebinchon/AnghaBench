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
typedef  scalar_t__ int64_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_9__ {int /*<<< orphan*/  box_level; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_7__ {TYPE_3__* module; } ;
typedef  int /*<<< orphan*/  MP4_BOX_TYPE_T ;

/* Variables and functions */
 scalar_t__ MP4_BOX_MIN_HEADER_SIZE ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 scalar_t__ FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC2( VC_CONTAINER_T *p_ctx, int64_t size,
   MP4_BOX_TYPE_T type)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   int64_t offset = FUNC0(p_ctx);
   bool unknown_size = size < 0;

   /* Read contained boxes */
   module->box_level++;
   while(status == VC_CONTAINER_SUCCESS &&
         (unknown_size || size >= MP4_BOX_MIN_HEADER_SIZE))
   {
      offset = FUNC0(p_ctx);
      status = FUNC1(p_ctx, size, type);
      if(!unknown_size) size -= (FUNC0(p_ctx) - offset);
   }
   module->box_level--;
   return status;
}