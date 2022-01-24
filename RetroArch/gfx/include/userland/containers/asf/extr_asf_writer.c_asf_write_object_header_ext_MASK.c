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
 int /*<<< orphan*/  ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  guid_null ; 

__attribute__((used)) static VC_CONTAINER_STATUS_T FUNC3( VC_CONTAINER_T *p_ctx )
{
   FUNC0(p_ctx, &guid_null, "Reserved Field 1");
   FUNC1(p_ctx, 0, "Reserved Field 2");

   return FUNC2(p_ctx, ASF_OBJECT_TYPE_HEADER_EXT_INTERNAL);
}