#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct playlist {int n_main_streams; int /*<<< orphan*/  main_streams; int /*<<< orphan*/  index; TYPE_1__* ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int nb_streams; TYPE_2__** streams; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct playlist*,TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,struct playlist*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, struct playlist *pls)
{
    int err;

    while (pls->n_main_streams < pls->ctx->nb_streams) {
        int ist_idx = pls->n_main_streams;
        AVStream *st = FUNC2(s, NULL);
        AVStream *ist = pls->ctx->streams[ist_idx];

        if (!st)
            return FUNC0(ENOMEM);

        st->id = pls->index;
        FUNC3(&pls->main_streams, &pls->n_main_streams, st);

        FUNC1(s, pls, st);

        err = FUNC4(st, pls, ist);
        if (err < 0)
            return err;
    }

    return 0;
}