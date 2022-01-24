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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;

/* Variables and functions */
 int /*<<< orphan*/  AV_OPT_TYPE_PIXEL_FMT ; 
 int /*<<< orphan*/  AV_PIX_FMT_NB ; 
 int FUNC0 (void*,char const*,int,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC1(void *obj, const char *name, enum AVPixelFormat fmt, int search_flags)
{
    return FUNC0(obj, name, fmt, search_flags, AV_OPT_TYPE_PIXEL_FMT, "pixel", AV_PIX_FMT_NB);
}