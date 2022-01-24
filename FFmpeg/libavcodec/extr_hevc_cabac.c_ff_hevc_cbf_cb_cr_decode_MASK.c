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
 size_t CBF_CB_CR ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__* elem_offset ; 

int FUNC1(HEVCContext *s, int trafo_depth)
{
    return FUNC0(elem_offset[CBF_CB_CR] + trafo_depth);
}