#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_6__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_PACKETIZER_T ;
struct TYPE_7__ {scalar_t__ conversion; } ;
typedef  TYPE_3__ VC_PACKETIZER_MODULE_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BYTESTREAM_T ;
struct TYPE_5__ {TYPE_3__* module; } ;

/* Variables and functions */
 scalar_t__ CONVERSION_U8_TO_S16L ; 
 size_t FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4( VC_PACKETIZER_T *p_ctx,
   VC_CONTAINER_BYTESTREAM_T *stream, size_t size, uint8_t *out )
{
   VC_PACKETIZER_MODULE_T *module = p_ctx->priv->module;
   uint8_t tmp[256];
   size_t tmp_size;

   while(size)
   {
      tmp_size = FUNC0(sizeof(tmp), size);
      FUNC1(stream, tmp, tmp_size);
      if (module->conversion == CONVERSION_U8_TO_S16L)
         FUNC3(&out, tmp, tmp_size);
      else
         FUNC2(stream, tmp_size);
      size -= tmp_size;
   }
}