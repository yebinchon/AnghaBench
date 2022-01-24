#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  enum AVHWFrameTransferDirection { ____Placeholder_AVHWFrameTransferDirection } AVHWFrameTransferDirection ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {TYPE_2__* internal; } ;
struct TYPE_8__ {TYPE_1__* hw_type; } ;
struct TYPE_7__ {int (* transfer_get_formats ) (TYPE_3__*,int,int**) ;} ;
typedef  TYPE_3__ AVHWFramesContext ;
typedef  TYPE_4__ AVBufferRef ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int FUNC1 (TYPE_3__*,int,int**) ; 

int FUNC2(AVBufferRef *hwframe_ref,
                                    enum AVHWFrameTransferDirection dir,
                                    enum AVPixelFormat **formats, int flags)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)hwframe_ref->data;

    if (!ctx->internal->hw_type->transfer_get_formats)
        return FUNC0(ENOSYS);

    return ctx->internal->hw_type->transfer_get_formats(ctx, dir, formats);
}