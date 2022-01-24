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
typedef  int /*<<< orphan*/  AVInputFormat ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CLASS_CATEGORY_DEVICE_INPUT ; 
 int /*<<< orphan*/  AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

AVInputFormat *FUNC1(AVInputFormat  *d)
{
    return FUNC0(d, 0, AV_CLASS_CATEGORY_DEVICE_VIDEO_INPUT,
                       AV_CLASS_CATEGORY_DEVICE_INPUT);
}