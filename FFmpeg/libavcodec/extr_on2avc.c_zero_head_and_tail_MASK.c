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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(float *src, int len, int order0, int order1)
{
    FUNC0(src,                0, sizeof(*src) * order0);
    FUNC0(src + len - order1, 0, sizeof(*src) * order1);
}