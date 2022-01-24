#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__** outputs; TYPE_1__** inputs; } ;
struct TYPE_11__ {int flags; } ;
struct TYPE_10__ {int /*<<< orphan*/  in_formats; } ;
struct TYPE_9__ {int /*<<< orphan*/  out_formats; } ;
typedef  TYPE_3__ AVPixFmtDescriptor ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*) ; 
 TYPE_3__* FUNC1 (TYPE_3__ const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC5(AVFilterContext *avctx)
{
    AVFilterFormats  *infmts = NULL;
    AVFilterFormats *outfmts = NULL;
    const AVPixFmtDescriptor *desc;
    int err;

    for (desc = FUNC1(NULL); desc;
         desc = FUNC1(desc)) {
        if (desc->flags & AV_PIX_FMT_FLAG_HWACCEL)
            err = FUNC2(&infmts,  FUNC0(desc));
        else
            err = FUNC2(&outfmts, FUNC0(desc));
        if (err) {
            FUNC4(&infmts);
            FUNC4(&outfmts);
            return err;
        }
    }

    if ((err = FUNC3(infmts,  &avctx->inputs[0]->out_formats)) < 0 ||
        (err = FUNC3(outfmts, &avctx->outputs[0]->in_formats)) < 0)
        return err;

    return 0;
}