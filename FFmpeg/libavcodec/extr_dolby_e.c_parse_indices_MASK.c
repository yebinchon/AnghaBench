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
struct TYPE_8__ {int nb_groups; void** idx; TYPE_1__* groups; } ;
struct TYPE_7__ {int /*<<< orphan*/  gb; int /*<<< orphan*/  avctx; } ;
struct TYPE_6__ {int nb_exponent; int exp_ofs; } ;
typedef  TYPE_1__ DBEGroup ;
typedef  TYPE_2__ DBEContext ;
typedef  TYPE_3__ DBEChannel ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(DBEContext *s, DBEChannel *c)
{
    DBEGroup *p, *g;
    int i, j;

    for (i = 0, p = NULL, g = c->groups; i < c->nb_groups; i++, p = g, g++) {
        if (FUNC2(&s->gb)) {
            int start = FUNC1(&s->gb, 6);

            if (start > g->nb_exponent) {
                FUNC0(s->avctx, AV_LOG_ERROR, "Invalid start index\n");
                return AVERROR_INVALIDDATA;
            }

            for (j = 0; j < start; j++)
                c->idx[g->exp_ofs + j] = 0;

            for (; j < g->nb_exponent; j++)
                c->idx[g->exp_ofs + j] = FUNC1(&s->gb, 2);
        } else if (i && g->nb_exponent == p->nb_exponent) {
            FUNC3(c->idx + g->exp_ofs,
                   c->idx + p->exp_ofs,
                   g->nb_exponent * sizeof(c->idx[0]));
        } else {
            FUNC4(c->idx + g->exp_ofs, 0, g->nb_exponent * sizeof(c->idx[0]));
        }
    }

    return 0;
}