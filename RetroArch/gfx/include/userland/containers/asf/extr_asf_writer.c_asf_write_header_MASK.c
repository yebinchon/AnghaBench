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
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;
typedef  int /*<<< orphan*/  VC_CONTAINER_STATUS_T ;

/* Variables and functions */
 int /*<<< orphan*/  ASF_OBJECT_TYPE_DATA ; 
 int /*<<< orphan*/  ASF_OBJECT_TYPE_HEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC1( VC_CONTAINER_T *p_ctx )
{
   VC_CONTAINER_STATUS_T status;

   /* TODO Sanity check the tracks */

   status = FUNC0(p_ctx, ASF_OBJECT_TYPE_HEADER);
   status = FUNC0(p_ctx, ASF_OBJECT_TYPE_DATA);

   return status;
}