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
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC8( VC_CONTAINER_T *p_ctx, int64_t size )
{
   uint32_t i, count;

   count = FUNC0(p_ctx, size, "Content Encryption Records Count");

   for(i = 0; i < count; i++)
   {
      uint32_t j, rec_count, data_size, length;

      FUNC3(p_ctx, size, "System ID");
      FUNC5(p_ctx, size, "System Version");
      rec_count = FUNC0(p_ctx, size, "Encrypted Object Record Count");

      FUNC6(p_ctx, size);

      for(j = 0; j < rec_count; j++)
      {
         FUNC4(p_ctx, size, "Encrypted Object ID Type");
         length = FUNC0(p_ctx, size, "Encrypted Object ID Length");
         if(length > size) return VC_CONTAINER_ERROR_CORRUPTED;
         FUNC2(p_ctx, size, length);
         FUNC6(p_ctx, size);
      }

      data_size = FUNC1(p_ctx, size, "Data Size");
      if(data_size > size) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC2(p_ctx, size, data_size);
      FUNC6(p_ctx, size);
   }

   return FUNC7(p_ctx);
}