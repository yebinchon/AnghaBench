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
struct TYPE_10__ {int /*<<< orphan*/  w; int /*<<< orphan*/  format; int /*<<< orphan*/  h; TYPE_1__* dst; } ;
struct TYPE_9__ {int flags; int /*<<< orphan*/  log2_chroma_h; } ;
struct TYPE_8__ {int is_packed_rgb; int /*<<< orphan*/  tmp_bwidth; int /*<<< orphan*/ * tmp_data; int /*<<< orphan*/  tmp_linesize; int /*<<< orphan*/  vsub; } ;
struct TYPE_7__ {TYPE_2__* priv; } ;
typedef  TYPE_2__ KerndeintContext ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  TYPE_4__ AVFilterLink ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_RGB ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(AVFilterLink *inlink)
{
    KerndeintContext *kerndeint = inlink->dst->priv;
    const AVPixFmtDescriptor *desc = FUNC2(inlink->format);
    int ret;

    kerndeint->is_packed_rgb = FUNC2(inlink->format)->flags & AV_PIX_FMT_FLAG_RGB;
    kerndeint->vsub = desc->log2_chroma_h;

    ret = FUNC0(kerndeint->tmp_data, kerndeint->tmp_linesize,
                         inlink->w, inlink->h, inlink->format, 16);
    if (ret < 0)
        return ret;
    FUNC3(kerndeint->tmp_data[0], 0, ret);

    if ((ret = FUNC1(kerndeint->tmp_bwidth, inlink->format, inlink->w)) < 0)
        return ret;

    return 0;
}