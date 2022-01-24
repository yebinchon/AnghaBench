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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct TYPE_8__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
struct TYPE_9__ {scalar_t__ frame_read; scalar_t__ data_len; scalar_t__ data; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_7__ {TYPE_3__* module; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static uint32_t FUNC4(VC_CONTAINER_T *p_ctx, uint32_t len, uint8_t *dest)
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   uint32_t ret = 0;

   // we may have read some data before into the data array, so
   // check whether we've copied all this data out first.
   if(module->frame_read < module->data_len)
   {
      uint32_t copy = FUNC0(len, module->data_len - module->frame_read);
      if(dest)
      {
         FUNC3(dest, module->data + module->frame_read, copy);
         dest += copy;
      }
      ret += copy;
      len -= copy;
   }

   // if there is still more to do, we need to access the IO to do this.
   if(len > 0)
   {
      if(dest)
         ret += FUNC1(p_ctx, dest, len);
      else
         ret += FUNC2(p_ctx, len);
   }

   module->frame_read += ret;
   return ret;
}