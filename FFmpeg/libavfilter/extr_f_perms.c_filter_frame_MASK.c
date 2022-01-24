#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  enum perm { ____Placeholder_perm } perm ;
struct TYPE_8__ {int /*<<< orphan*/ * outputs; TYPE_1__* priv; } ;
struct TYPE_7__ {TYPE_3__* dst; } ;
struct TYPE_6__ {int mode; int /*<<< orphan*/  lfg; } ;
typedef  TYPE_1__ PermsContext ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  ENOMEM ; 
#define  MODE_RANDOM 131 
#define  MODE_RO 130 
#define  MODE_RW 129 
#define  MODE_TOGGLE 128 
 int RO ; 
 int RW ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * perm_str ; 

__attribute__((used)) static int FUNC8(AVFilterLink *inlink, AVFrame *frame)
{
    int ret;
    AVFilterContext *ctx = inlink->dst;
    PermsContext *s = ctx->priv;
    AVFrame *out = frame;
    enum perm in_perm = FUNC3(frame) ? RW : RO;
    enum perm out_perm;

    switch (s->mode) {
    case MODE_TOGGLE:   out_perm = in_perm == RO ? RW : RO;                 break;
    case MODE_RANDOM:   out_perm = FUNC5(&s->lfg) & 1 ? RW : RO;       break;
    case MODE_RO:       out_perm = RO;                                      break;
    case MODE_RW:       out_perm = RW;                                      break;
    default:            out_perm = in_perm;                                 break;
    }

    FUNC6(ctx, AV_LOG_VERBOSE, "%s -> %s%s\n",
           perm_str[in_perm], perm_str[out_perm],
           in_perm == out_perm ? " (no-op)" : "");

    if (in_perm == RO && out_perm == RW) {
        if ((ret = FUNC4(frame)) < 0)
            return ret;
    } else if (in_perm == RW && out_perm == RO) {
        out = FUNC1(frame);
        if (!out)
            return FUNC0(ENOMEM);
    }

    ret = FUNC7(ctx->outputs[0], out);

    if (in_perm == RW && out_perm == RO)
        FUNC2(&frame);
    return ret;
}