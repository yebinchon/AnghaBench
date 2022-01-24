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
typedef  int /*<<< orphan*/  VC_CONTAINER_TRACK_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_BITS_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char*) ; 
#define  NAL_UNIT_PICTURE_PARAMETER_SET 129 
#define  NAL_UNIT_SEQUENCE_PARAMETER_SET 128 
 int NAL_UNIT_TYPE_MASK ; 
 int /*<<< orphan*/  VC_CONTAINER_ERROR_FORMAT_INVALID ; 
 int /*<<< orphan*/  VC_CONTAINER_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC2(VC_CONTAINER_T *p_ctx,
      VC_CONTAINER_TRACK_T *track,
      VC_CONTAINER_BITS_T *sprop)
{
   switch (FUNC0(p_ctx, sprop, 8, "nal_unit_header") & NAL_UNIT_TYPE_MASK)
   {
   case NAL_UNIT_SEQUENCE_PARAMETER_SET:
      return FUNC1(p_ctx, track, sprop);
   case NAL_UNIT_PICTURE_PARAMETER_SET:
      /* Not handled, but valid */
      return VC_CONTAINER_SUCCESS;
   default:
      return VC_CONTAINER_ERROR_FORMAT_INVALID;
   }
}