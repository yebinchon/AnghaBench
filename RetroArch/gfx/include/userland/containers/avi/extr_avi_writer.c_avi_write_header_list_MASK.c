#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_14__ {unsigned int tracks_num; TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
struct TYPE_15__ {int /*<<< orphan*/  null_io; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_13__ {TYPE_3__* module; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC9( VC_CONTAINER_T *p_ctx, uint32_t header_list_size )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status;
   unsigned int i;

   FUNC3(p_ctx, FUNC2('L','I','S','T'), "Chunk ID");
   FUNC4(p_ctx, header_list_size, "LIST Size");
   FUNC3(p_ctx, FUNC2('h','d','r','l'), "Chunk ID");
   if ((status = FUNC1(p_ctx)) != VC_CONTAINER_SUCCESS) return status;

   /* Write the main AVI header chunk ('avih') */
   if ((status = FUNC5(p_ctx)) != VC_CONTAINER_SUCCESS)
      return status;

   for (i = 0; i < p_ctx->tracks_num; i++)
   {
      uint32_t list_size = 0;

      /* Write a stream header list chunk ('strl') */
      if(!FUNC8(p_ctx, &module->null_io))
      {
         status = FUNC6(p_ctx, i, 0);
         if (status != VC_CONTAINER_SUCCESS) return status;
         list_size = FUNC0(p_ctx) - 8;
      }
      FUNC7(p_ctx, &module->null_io);

      status = FUNC6(p_ctx, i, list_size);
      if (status != VC_CONTAINER_SUCCESS) return status;
   }

   return status;
}