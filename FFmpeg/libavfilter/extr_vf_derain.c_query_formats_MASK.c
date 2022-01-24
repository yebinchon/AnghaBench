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
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int const AV_PIX_FMT_NONE ; 
 int const AV_PIX_FMT_RGB24 ; 
 int /*<<< orphan*/ * FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVFilterContext *ctx)
{
    AVFilterFormats *formats;
    const enum AVPixelFormat pixel_fmts[] = {
        AV_PIX_FMT_RGB24,
        AV_PIX_FMT_NONE
    };

    formats = FUNC0(pixel_fmts);

    return FUNC1(ctx, formats);
}