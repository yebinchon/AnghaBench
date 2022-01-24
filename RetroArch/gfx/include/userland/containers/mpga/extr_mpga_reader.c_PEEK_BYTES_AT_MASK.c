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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  VC_CONTAINER_T ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC3( VC_CONTAINER_T *p_ctx, int64_t offset, uint8_t *buffer, int size )
{
   int ret;
   int64_t current_position = FUNC2(p_ctx);
   FUNC1(p_ctx, current_position + offset);
   ret = FUNC0(p_ctx, buffer, size);
   FUNC1(p_ctx, current_position);
   return ret;
}