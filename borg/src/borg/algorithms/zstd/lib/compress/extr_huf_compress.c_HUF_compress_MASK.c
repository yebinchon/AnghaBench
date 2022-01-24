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
 int /*<<< orphan*/  HUF_TABLELOG_DEFAULT ; 
 size_t FUNC0 (void*,size_t,void const*,size_t,int,int /*<<< orphan*/ ) ; 

size_t FUNC1 (void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    return FUNC0(dst, maxDstSize, src, srcSize, 255, HUF_TABLELOG_DEFAULT);
}