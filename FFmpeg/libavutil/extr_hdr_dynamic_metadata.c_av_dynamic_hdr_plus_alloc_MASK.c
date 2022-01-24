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
typedef  int /*<<< orphan*/  AVDynamicHDRPlus ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 

AVDynamicHDRPlus *FUNC1(size_t *size)
{
    AVDynamicHDRPlus *hdr_plus = FUNC0(sizeof(AVDynamicHDRPlus));
    if (!hdr_plus)
        return NULL;

    if (size)
        *size = sizeof(*hdr_plus);

    return hdr_plus;
}