#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
struct TYPE_10__ {TYPE_1__* codec; } ;
struct TYPE_9__ {int (* split_fragment ) (TYPE_2__*,int /*<<< orphan*/ *,int) ;} ;
typedef  int /*<<< orphan*/  CodedBitstreamFragment ;
typedef  TYPE_2__ CodedBitstreamContext ;
typedef  TYPE_3__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 

int FUNC3(CodedBitstreamContext *ctx,
                          CodedBitstreamFragment *frag,
                          const AVCodecParameters *par)
{
    int err;

    err = FUNC0(ctx, frag, par->extradata,
                                 par->extradata_size);
    if (err < 0)
        return err;

    err = ctx->codec->split_fragment(ctx, frag, 1);
    if (err < 0)
        return err;

    return FUNC1(ctx, frag);
}