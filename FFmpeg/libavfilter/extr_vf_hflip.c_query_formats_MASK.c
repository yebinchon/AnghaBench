#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; scalar_t__ log2_chroma_w; scalar_t__ log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_4__ {scalar_t__ plane; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_BITSTREAM ; 
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 TYPE_2__* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx)
{
    AVFilterFormats *pix_fmts = NULL;
    int fmt, ret;

    for (fmt = 0; FUNC0(fmt); fmt++) {
        const AVPixFmtDescriptor *desc = FUNC0(fmt);
        if (!(desc->flags & AV_PIX_FMT_FLAG_HWACCEL ||
              desc->flags & AV_PIX_FMT_FLAG_BITSTREAM ||
              (desc->log2_chroma_w != desc->log2_chroma_h &&
               desc->comp[0].plane == desc->comp[1].plane)) &&
            (ret = FUNC1(&pix_fmts, fmt)) < 0)
            return ret;
    }

    return FUNC2(ctx, pix_fmts);
}