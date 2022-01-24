#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct playlist** buffer; } ;
struct playlist {TYPE_4__* ctx; scalar_t__ input_next_requested; int /*<<< orphan*/  input_next; scalar_t__ input_read_done; int /*<<< orphan*/  input; TYPE_1__ pb; int /*<<< orphan*/  pkt; struct playlist** init_sec_buf; int /*<<< orphan*/  id3_deferred_extra; int /*<<< orphan*/  id3_initial; struct playlist** id3_buf; struct playlist** renditions; struct playlist** main_streams; } ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_6__ {int n_playlists; struct playlist** playlists; int /*<<< orphan*/  ctx; } ;
typedef  TYPE_2__ HLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct playlist*) ; 
 int /*<<< orphan*/  FUNC2 (struct playlist***) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct playlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct playlist*) ; 

__attribute__((used)) static void FUNC9(HLSContext *c)
{
    int i;
    for (i = 0; i < c->n_playlists; i++) {
        struct playlist *pls = c->playlists[i];
        FUNC8(pls);
        FUNC7(pls);
        FUNC2(&pls->main_streams);
        FUNC2(&pls->renditions);
        FUNC2(&pls->id3_buf);
        FUNC0(&pls->id3_initial);
        FUNC6(&pls->id3_deferred_extra);
        FUNC2(&pls->init_sec_buf);
        FUNC3(&pls->pkt);
        FUNC2(&pls->pb.buffer);
        FUNC5(c->ctx, &pls->input);
        pls->input_read_done = 0;
        FUNC5(c->ctx, &pls->input_next);
        pls->input_next_requested = 0;
        if (pls->ctx) {
            pls->ctx->pb = NULL;
            FUNC4(&pls->ctx);
        }
        FUNC1(pls);
    }
    FUNC2(&c->playlists);
    c->n_playlists = 0;
}