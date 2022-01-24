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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  scalar_t__ VC_CONTAINER_FOURCC_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC4(VC_CONTAINER_T *p_ctx, VC_CONTAINER_FOURCC_T id, uint32_t *size)
{
   VC_CONTAINER_STATUS_T status;
   VC_CONTAINER_FOURCC_T chunk_id;
   uint32_t chunk_size;

   do {
      chunk_id = FUNC1(p_ctx, "Chunk ID");
      chunk_size = FUNC2(p_ctx, "Chunk size");
      if((status = FUNC3(p_ctx)) != VC_CONTAINER_SUCCESS) return status;

      if(chunk_id == id)
      {
         *size = chunk_size;
         return VC_CONTAINER_SUCCESS;
      }
      /* Not interested in this chunk, skip it. */
      FUNC0(p_ctx, chunk_size);
   } while((status = FUNC3(p_ctx)) == VC_CONTAINER_SUCCESS);

   return status; /* chunk not found */
}