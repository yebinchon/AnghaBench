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
#define  AV_PIX_FMT_CUDA 129 
#define  AV_PIX_FMT_NONE 128 
 int /*<<< orphan*/ * FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(AVFilterContext *ctx)
{
    static const enum AVPixelFormat pixel_formats[] = {
        AV_PIX_FMT_CUDA, AV_PIX_FMT_NONE,
    };
    AVFilterFormats *pix_fmts = FUNC0(pixel_formats);

    return FUNC1(ctx, pix_fmts);
}