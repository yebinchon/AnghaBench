#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {scalar_t__ offset; TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_IO_T ;
struct TYPE_7__ {scalar_t__ cache; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 size_t FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 

size_t FUNC3(VC_CONTAINER_IO_T *p_ctx, size_t size)
{
   if(!size) return 0;

   if(size < 8)
   {
      uint8_t value[8];
      return FUNC1(p_ctx, value, size);
   }

   if(p_ctx->priv->cache)
   {
      if(FUNC0(p_ctx, p_ctx->priv->cache, p_ctx->offset + size)) return 0;
      p_ctx->offset += size;
      return size;
   }

   if(FUNC2(p_ctx, p_ctx->offset + size)) return 0;
   return size;
}