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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/ * VC_CONTAINER_SEEK_MODE_T ;
typedef  int /*<<< orphan*/ * VC_CONTAINER_SEEK_FLAGS_T ;

/* Variables and functions */
 int /*<<< orphan*/  VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC1( VC_CONTAINER_T *p_ctx,
                                               int64_t *p_offset,
                                               VC_CONTAINER_SEEK_MODE_T mode,
                                               VC_CONTAINER_SEEK_FLAGS_T flags)
{
   FUNC0(p_ctx);
   FUNC0(p_offset);
   FUNC0(mode);
   FUNC0(flags);

   /* RTP is a non-seekable container */
   return VC_CONTAINER_ERROR_UNSUPPORTED_OPERATION;
}