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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC9(VC_CONTAINER_T *p_ctx,
   int64_t size, uint64_t *value)
{
   switch(size)
   {
   case 1: *value = FUNC7(p_ctx, "u8-integer"); break;
   case 2: *value = FUNC0(p_ctx, "u16-integer"); break;
   case 3: *value = FUNC1(p_ctx, "u24-integer"); break;
   case 4: *value = FUNC2(p_ctx, "u32-integer"); break;
   case 5: *value = FUNC3(p_ctx, "u40-integer"); break;
   case 6: *value = FUNC4(p_ctx, "u48-integer"); break;
   case 7: *value = FUNC5(p_ctx, "u56-integer"); break;
   case 8: *value = FUNC6(p_ctx, "u64-integer"); break;
   default: return VC_CONTAINER_ERROR_CORRUPTED;
   }
   return FUNC8(p_ctx);
}