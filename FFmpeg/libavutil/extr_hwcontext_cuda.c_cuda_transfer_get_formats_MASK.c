#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  enum AVHWFrameTransferDirection { ____Placeholder_AVHWFrameTransferDirection } AVHWFrameTransferDirection ;
struct TYPE_3__ {int sw_format; } ;
typedef  TYPE_1__ AVHWFramesContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(AVHWFramesContext *ctx,
                                     enum AVHWFrameTransferDirection dir,
                                     enum AVPixelFormat **formats)
{
    enum AVPixelFormat *fmts;

    fmts = FUNC1(2, sizeof(*fmts));
    if (!fmts)
        return FUNC0(ENOMEM);

    fmts[0] = ctx->sw_format;
    fmts[1] = AV_PIX_FMT_NONE;

    *formats = fmts;

    return 0;
}