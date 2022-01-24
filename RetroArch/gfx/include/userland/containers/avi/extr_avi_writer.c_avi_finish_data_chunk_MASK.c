#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  scalar_t__ VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ VC_CONTAINER_ERROR_FAILED ; 
 scalar_t__ VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,char*) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8( VC_CONTAINER_T *p_ctx, uint32_t chunk_size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;

   if (chunk_size)
   {
      /* Rewrite the chunk size, this won't be efficient if it happens often */
      if (FUNC5(p_ctx))
      {
         FUNC2(p_ctx, FUNC4(p_ctx) - chunk_size - 4);
         FUNC7(p_ctx, chunk_size, "Chunk Size");
         FUNC3(p_ctx, chunk_size);
      }
      else
      {
         FUNC1(p_ctx, "warning, can't rewrite chunk size, data will be malformed");
         status = VC_CONTAINER_ERROR_FAILED;
      }
   }

   FUNC0(p_ctx);

   if (status != VC_CONTAINER_SUCCESS) status = FUNC6(p_ctx);

   return status;
}