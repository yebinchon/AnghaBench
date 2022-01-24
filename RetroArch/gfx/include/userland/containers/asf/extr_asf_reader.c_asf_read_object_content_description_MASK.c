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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_CORRUPTED ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC4( VC_CONTAINER_T *p_ctx, int64_t size )
{
   uint16_t t_length, a_length, c_length, d_length, r_length;

   t_length = FUNC0(p_ctx, size, "Title Length");
   a_length = FUNC0(p_ctx, size, "Author Length");
   c_length = FUNC0(p_ctx, size, "Copyright Length");
   d_length = FUNC0(p_ctx, size, "Description Length");
   r_length = FUNC0(p_ctx, size, "Rating Length");

   FUNC2(p_ctx, size);

   if(size < t_length) return VC_CONTAINER_ERROR_CORRUPTED;
   FUNC1(p_ctx, size, t_length, "Title");
   if(size < a_length) return VC_CONTAINER_ERROR_CORRUPTED;
   FUNC1(p_ctx, size, a_length, "Author");
   if(size < c_length) return VC_CONTAINER_ERROR_CORRUPTED;
   FUNC1(p_ctx, size, c_length, "Copyright");
   if(size < d_length) return VC_CONTAINER_ERROR_CORRUPTED;
   FUNC1(p_ctx, size, d_length, "Description");
   if(size < r_length) return VC_CONTAINER_ERROR_CORRUPTED;
   FUNC1(p_ctx, size, r_length, "Rating");

   return FUNC3(p_ctx);
}