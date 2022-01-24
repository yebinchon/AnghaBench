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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC4(VC_CONTAINER_T *p_ctx,
   int64_t size, double *value)
{
   union {
      uint32_t  u32;
      uint64_t  u64;
      float     f;
      double    d;
   } u;

   switch(size)
   {
   case 4: u.u32 = FUNC1(p_ctx, "f32-float"); *value = u.f; break;
   case 8: u.u64 = FUNC2(p_ctx, "f64-float"); *value = u.d; break;
   default: return VC_CONTAINER_ERROR_CORRUPTED;
   }
   FUNC0(p_ctx, "float: %f", *value);
   return FUNC3(p_ctx);
}