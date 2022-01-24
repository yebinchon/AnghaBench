#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ is_yuv; scalar_t__ is_rgb; } ;
typedef  TYPE_1__ LutContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int* all_pix_fmts ; 
 int /*<<< orphan*/ * FUNC1 (int const*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int* rgb_pix_fmts ; 
 int* yuv_pix_fmts ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx)
{
    LutContext *s = ctx->priv;

    const enum AVPixelFormat *pix_fmts = s->is_rgb ? rgb_pix_fmts :
                                                     s->is_yuv ? yuv_pix_fmts :
                                                                 all_pix_fmts;
    AVFilterFormats *fmts_list = FUNC1(pix_fmts);
    if (!fmts_list)
        return FUNC0(ENOMEM);
    return FUNC2(ctx, fmts_list);
}