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
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC7( VC_CONTAINER_T *p_ctx, int64_t size )
{
   VC_CONTAINER_STATUS_T status = VC_CONTAINER_SUCCESS;
   uint32_t i, count, length;

   FUNC3(p_ctx, size, "Reserved");
   count = FUNC1(p_ctx, size, "Codec Entries Count");

   FUNC6(p_ctx, size);

   /* Codec entries */
   for(i = 0; i < count; i++)
   {
      FUNC5(p_ctx, size, "Type");
      length = FUNC0(p_ctx, size, "Codec Name Length");
      if(size < length) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC4(p_ctx, size, length * 2, "Codec Name");
      length = FUNC0(p_ctx, size, "Codec Description Length");
      if(size < length) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC4(p_ctx, size, length * 2, "Codec Description");
      length = FUNC0(p_ctx, size, "Codec Information Length");
      if(size < length) return VC_CONTAINER_ERROR_CORRUPTED;
      FUNC2(p_ctx, size, length);

      FUNC6(p_ctx, size);
   }

   return status;
}