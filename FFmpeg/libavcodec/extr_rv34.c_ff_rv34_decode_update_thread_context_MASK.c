#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {scalar_t__ height; scalar_t__ width; int /*<<< orphan*/  context_initialized; } ;
struct TYPE_10__ {int /*<<< orphan*/  si; int /*<<< orphan*/  next_pts; int /*<<< orphan*/  last_pts; int /*<<< orphan*/  cur_pts; TYPE_2__ s; } ;
typedef  TYPE_1__ RV34DecContext ;
typedef  TYPE_2__ MpegEncContext ;
typedef  TYPE_3__ const AVCodecContext ;

/* Variables and functions */
 int FUNC0 (TYPE_3__ const*,TYPE_3__ const*) ; 
 int FUNC1 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(AVCodecContext *dst, const AVCodecContext *src)
{
    RV34DecContext *r = dst->priv_data, *r1 = src->priv_data;
    MpegEncContext * const s = &r->s, * const s1 = &r1->s;
    int err;

    if (dst == src || !s1->context_initialized)
        return 0;

    if (s->height != s1->height || s->width != s1->width) {
        s->height = s1->height;
        s->width  = s1->width;
        if ((err = FUNC1(s)) < 0)
            return err;
        if ((err = FUNC3(r)) < 0)
            return err;
    }

    r->cur_pts  = r1->cur_pts;
    r->last_pts = r1->last_pts;
    r->next_pts = r1->next_pts;

    FUNC2(&r->si, 0, sizeof(r->si));

    // Do no call ff_mpeg_update_thread_context on a partially initialized
    // decoder context.
    if (!s1->context_initialized)
        return 0;

    return FUNC0(dst, src);
}