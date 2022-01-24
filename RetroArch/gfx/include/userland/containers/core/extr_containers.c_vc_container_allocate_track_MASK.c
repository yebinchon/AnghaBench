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
struct VC_CONTAINER_TRACK_MODULE_T {int dummy; } ;
struct TYPE_7__ {TYPE_3__* format; TYPE_2__* priv; } ;
typedef  TYPE_1__ VC_CONTAINER_TRACK_T ;
struct TYPE_8__ {struct VC_CONTAINER_TRACK_MODULE_T* module; } ;
typedef  TYPE_2__ VC_CONTAINER_TRACK_PRIVATE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
struct TYPE_9__ {void* type; } ;
typedef  TYPE_3__ VC_CONTAINER_ES_FORMAT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,unsigned int) ; 

VC_CONTAINER_TRACK_T *FUNC3( VC_CONTAINER_T *context, unsigned int extra_size )
{
   VC_CONTAINER_TRACK_T *p_ctx;
   unsigned int size;
   FUNC0(context);

   size = sizeof(*p_ctx) + sizeof(*p_ctx->priv) + sizeof(*p_ctx->format) +
      sizeof(*p_ctx->format->type) + extra_size;

   p_ctx = FUNC1(size);
   if(!p_ctx) return 0;

   FUNC2(p_ctx, 0, size);
   p_ctx->priv = (VC_CONTAINER_TRACK_PRIVATE_T *)(p_ctx + 1);
   p_ctx->format = (VC_CONTAINER_ES_FORMAT_T *)(p_ctx->priv + 1);
   p_ctx->format->type = (void *)(p_ctx->format + 1);
   p_ctx->priv->module = (struct VC_CONTAINER_TRACK_MODULE_T *)(p_ctx->format->type + 1);
   return p_ctx;
}