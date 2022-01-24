#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  header ;
struct TYPE_11__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_12__ {unsigned int block_size; int frame_header_size; int /*<<< orphan*/  option; scalar_t__ non_standard; } ;
typedef  TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_10__ {TYPE_3__* module; } ;

/* Variables and functions */
 int FRAME_HEADER_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int FUNC1 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 scalar_t__ VC_CONTAINER_ERROR_CORRUPTED ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 scalar_t__ FUNC5 (TYPE_2__*,unsigned int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,unsigned int*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7( VC_CONTAINER_T *ctx )
{
   VC_CONTAINER_MODULE_T *module = ctx->priv->module;
   unsigned int bytes_left = FRAME_HEADER_SIZE_MAX - 5;
   unsigned int value1;
   char header[5];

   if (FUNC1(ctx, header, sizeof(header)) != sizeof(header) ||
          FUNC4(header, "FRAME", sizeof(header)))
   {
      FUNC0(ctx, "missing frame marker");
      return FUNC2(ctx) != VC_CONTAINER_SUCCESS ?
         FUNC2(ctx) : VC_CONTAINER_ERROR_CORRUPTED;
   }

   /* Parse parameters */
   while (FUNC5(ctx, &bytes_left) == VC_CONTAINER_SUCCESS)
   {
      if (module->non_standard && FUNC6(module->option, "S%i", &value1) == 1)
         module->block_size = value1;
   }

   /* Check the end marker */
   if (FUNC3(ctx) != 0x0a)
   {
      FUNC0(ctx, "missing end of frame header marker");
      return VC_CONTAINER_ERROR_CORRUPTED;
   }

   module->frame_header_size = FRAME_HEADER_SIZE_MAX - bytes_left - 1;
   return VC_CONTAINER_SUCCESS;
}