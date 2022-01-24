#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_15__ {TYPE_1__* priv; } ;
typedef  TYPE_2__ VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ frame_size; } ;
typedef  TYPE_3__ VC_CONTAINER_PACKET_T ;
struct TYPE_17__ {int /*<<< orphan*/  null_io; } ;
typedef  TYPE_4__ VC_CONTAINER_MODULE_T ;
struct TYPE_14__ {TYPE_4__* module; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ AVI_INDEX_ENTRY_SIZE ; 
 scalar_t__ AVI_STD_INDEX_ENTRY_SIZE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int64_t FUNC9( VC_CONTAINER_T *p_ctx,
   VC_CONTAINER_PACKET_T *p_packet )
{
   VC_CONTAINER_MODULE_T *module = p_ctx->priv->module;
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   int64_t filesize = 0;
   int refcount;

   /* Start from current file position */
   filesize = FUNC1(p_ctx);

   refcount = FUNC8(p_ctx, &module->null_io);
   FUNC6(refcount == 0); /* Although perfectly harmless, we should
                                          not be called with the null i/o enabled. */
   FUNC2(refcount);

   do {
      /* If we know what the final size of the chunk is going to be,
         we can use that here to avoid writing a partial final packet */
      FUNC3(p_ctx, NULL, p_packet->frame_size ? p_packet->frame_size : p_packet->size);
      FUNC0(p_ctx);

      /* Index entries for the chunk */
      FUNC3(p_ctx, NULL, AVI_INDEX_ENTRY_SIZE + AVI_STD_INDEX_ENTRY_SIZE);

      /* Current standard index data */
      if (FUNC5(p_ctx) != VC_CONTAINER_SUCCESS) break;

      /* Current legacy index data */
      status = FUNC4(p_ctx);
      if (status != VC_CONTAINER_SUCCESS) break;
   } while(0);

   filesize += FUNC1(p_ctx);

   FUNC7(p_ctx, &module->null_io);

   return filesize;
}