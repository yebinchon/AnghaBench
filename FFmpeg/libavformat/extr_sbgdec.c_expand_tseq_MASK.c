#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ t; } ;
struct sbg_script_tseq {int /*<<< orphan*/  lock; int /*<<< orphan*/  fade; TYPE_1__ ts; int /*<<< orphan*/  name; int /*<<< orphan*/  name_len; } ;
struct sbg_script_event {int elements; int nb_elements; int /*<<< orphan*/  fade; scalar_t__ ts; } ;
struct sbg_script_definition {char type; int elements; int nb_elements; int /*<<< orphan*/  name; int /*<<< orphan*/  name_len; } ;
struct sbg_script {int nb_def; int /*<<< orphan*/  nb_events; int /*<<< orphan*/  events; struct sbg_script_tseq* block_tseq; struct sbg_script_definition* def; } ;
typedef  int /*<<< orphan*/  int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct sbg_script_event* FUNC1 (void**,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(void *log, struct sbg_script *s, int *nb_ev_max,
                       int64_t t0, struct sbg_script_tseq *tseq)
{
    int i, r;
    struct sbg_script_definition *def;
    struct sbg_script_tseq *be;
    struct sbg_script_event *ev;

    if (tseq->lock++) {
        FUNC2(log, AV_LOG_ERROR, "Recursion loop on \"%.*s\"\n",
               tseq->name_len, tseq->name);
        return FUNC0(EINVAL);
    }
    t0 += tseq->ts.t;
    for (i = 0; i < s->nb_def; i++) {
        if (s->def[i].name_len == tseq->name_len &&
            !FUNC3(s->def[i].name, tseq->name, tseq->name_len))
            break;
    }
    if (i >= s->nb_def) {
        FUNC2(log, AV_LOG_ERROR, "Tone-set \"%.*s\" not defined\n",
               tseq->name_len, tseq->name);
        return FUNC0(EINVAL);
    }
    def = &s->def[i];
    if (def->type == 'B') {
        be = s->block_tseq + def->elements;
        for (i = 0; i < def->nb_elements; i++) {
            r = FUNC4(log, s, nb_ev_max, t0, &be[i]);
            if (r < 0)
                return r;
        }
    } else {
        ev = FUNC1((void **)&s->events, sizeof(*ev),
                              &s->nb_events, nb_ev_max);
        if (!ev)
            return FUNC0(ENOMEM);
        ev->ts          = tseq->ts.t;
        ev->elements    = def->elements;
        ev->nb_elements = def->nb_elements;
        ev->fade        = tseq->fade;
    }
    tseq->lock--;
    return 0;
}