#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct representation {TYPE_1__* ctx; scalar_t__ last_seq_no; int /*<<< orphan*/  cur_seq_no; TYPE_4__* parent; } ;
struct TYPE_14__ {int /*<<< orphan*/  priv_data; } ;
struct TYPE_12__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_13__ {int id; TYPE_2__ time_base; int /*<<< orphan*/  pts_wrap_bits; int /*<<< orphan*/  codecpar; } ;
struct TYPE_11__ {int nb_streams; TYPE_3__** streams; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,struct representation*) ; 
 scalar_t__ FUNC5 (struct representation*,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,struct representation*) ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s, struct representation *pls)
{
    int ret = 0;
    int i;

    pls->parent = s;
    pls->cur_seq_no  = FUNC4(s, pls);

    if (!pls->last_seq_no) {
        pls->last_seq_no = FUNC5(pls, s->priv_data);
    }

    ret = FUNC6(s, pls);
    if (ret < 0) {
        goto fail;
    }
    for (i = 0; i < pls->ctx->nb_streams; i++) {
        AVStream *st = FUNC2(s, NULL);
        AVStream *ist = pls->ctx->streams[i];
        if (!st) {
            ret = FUNC0(ENOMEM);
            goto fail;
        }
        st->id = i;
        FUNC1(st->codecpar, ist->codecpar);
        FUNC3(st, ist->pts_wrap_bits, ist->time_base.num, ist->time_base.den);
    }

    return 0;
fail:
    return ret;
}