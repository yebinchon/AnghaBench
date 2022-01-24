#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ data; } ;
struct TYPE_6__ {TYPE_5__* hwaccel_priv_buf; scalar_t__ hwaccel_picture_private; int /*<<< orphan*/  sequence; int /*<<< orphan*/  flags; int /*<<< orphan*/  ctb_count; int /*<<< orphan*/  poc; TYPE_5__* rpl_buf; int /*<<< orphan*/  rpl_tab; TYPE_5__* rpl_tab_buf; int /*<<< orphan*/  tab_mvf; TYPE_5__* tab_mvf_buf; int /*<<< orphan*/  tf; } ;
typedef  TYPE_1__ HEVCFrame ;
typedef  int /*<<< orphan*/  HEVCContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(HEVCContext *s, HEVCFrame *dst, HEVCFrame *src)
{
    int ret;

    ret = FUNC3(&dst->tf, &src->tf);
    if (ret < 0)
        return ret;

    dst->tab_mvf_buf = FUNC1(src->tab_mvf_buf);
    if (!dst->tab_mvf_buf)
        goto fail;
    dst->tab_mvf = src->tab_mvf;

    dst->rpl_tab_buf = FUNC1(src->rpl_tab_buf);
    if (!dst->rpl_tab_buf)
        goto fail;
    dst->rpl_tab = src->rpl_tab;

    dst->rpl_buf = FUNC1(src->rpl_buf);
    if (!dst->rpl_buf)
        goto fail;

    dst->poc        = src->poc;
    dst->ctb_count  = src->ctb_count;
    dst->flags      = src->flags;
    dst->sequence   = src->sequence;

    if (src->hwaccel_picture_private) {
        dst->hwaccel_priv_buf = FUNC1(src->hwaccel_priv_buf);
        if (!dst->hwaccel_priv_buf)
            goto fail;
        dst->hwaccel_picture_private = dst->hwaccel_priv_buf->data;
    }

    return 0;
fail:
    FUNC2(s, dst, ~0);
    return FUNC0(ENOMEM);
}