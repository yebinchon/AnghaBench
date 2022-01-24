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
typedef  int /*<<< orphan*/  HEVCContext ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 size_t TRANSFORM_SKIP_FLAG ; 
 scalar_t__* elem_offset ; 

__attribute__((used)) static int FUNC1(HEVCContext *s, int c_idx)
{
    return FUNC0(elem_offset[TRANSFORM_SKIP_FLAG] + !!c_idx);
}