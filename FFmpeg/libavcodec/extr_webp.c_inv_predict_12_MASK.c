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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__ const) ; 

__attribute__((used)) static void FUNC1(uint8_t *p, const uint8_t *p_l, const uint8_t *p_tl,
                           const uint8_t *p_t, const uint8_t *p_tr)
{
    p[0] = FUNC0(p_l[0] + p_t[0] - p_tl[0]);
    p[1] = FUNC0(p_l[1] + p_t[1] - p_tl[1]);
    p[2] = FUNC0(p_l[2] + p_t[2] - p_tl[2]);
    p[3] = FUNC0(p_l[3] + p_t[3] - p_tl[3]);
}