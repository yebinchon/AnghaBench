#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int ncomponents; int /*<<< orphan*/  avctx; int /*<<< orphan*/  g; } ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_10__ {TYPE_2__ member_0; } ;
struct TYPE_13__ {int nb_poc; scalar_t__ is_default; TYPE_3__* poc; TYPE_1__ member_0; } ;
struct TYPE_12__ {int RSpoc; int CSpoc; int REpoc; int CEpoc; void* Ppoc; int /*<<< orphan*/  LYEpoc; } ;
typedef  TYPE_3__ Jpeg2000POCEntry ;
typedef  TYPE_4__ Jpeg2000POC ;
typedef  TYPE_5__ Jpeg2000DecoderContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MAX_POCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*,int) ; 

__attribute__((used)) static int FUNC6(Jpeg2000DecoderContext *s, int size, Jpeg2000POC *p)
{
    int i;
    int elem_size = s->ncomponents <= 257 ? 7 : 9;
    Jpeg2000POC tmp = {{{0}}};

    if (FUNC3(&s->g) < 5 || size < 2 + elem_size) {
        FUNC0(s->avctx, AV_LOG_ERROR, "Insufficient space for POC\n");
        return AVERROR_INVALIDDATA;
    }

    if (elem_size > 7) {
        FUNC1(s->avctx, "Fat POC not supported");
        return AVERROR_PATCHWELCOME;
    }

    tmp.nb_poc = (size - 2) / elem_size;
    if (tmp.nb_poc > MAX_POCS) {
        FUNC1(s->avctx, "Too many POCs (%d)", tmp.nb_poc);
        return AVERROR_PATCHWELCOME;
    }

    for (i = 0; i<tmp.nb_poc; i++) {
        Jpeg2000POCEntry *e = &tmp.poc[i];
        e->RSpoc  = FUNC4(&s->g);
        e->CSpoc  = FUNC4(&s->g);
        e->LYEpoc = FUNC2(&s->g);
        e->REpoc  = FUNC4(&s->g);
        e->CEpoc  = FUNC4(&s->g);
        e->Ppoc   = FUNC4(&s->g);
        if (!e->CEpoc)
            e->CEpoc = 256;
        if (e->CEpoc > s->ncomponents)
            e->CEpoc = s->ncomponents;
        if (   e->RSpoc >= e->REpoc || e->REpoc > 33
            || e->CSpoc >= e->CEpoc || e->CEpoc > s->ncomponents
            || !e->LYEpoc) {
            FUNC0(s->avctx, AV_LOG_ERROR, "POC Entry %d is invalid (%d, %d, %d, %d, %d, %d)\n", i,
                e->RSpoc, e->CSpoc, e->LYEpoc, e->REpoc, e->CEpoc, e->Ppoc
            );
            return AVERROR_INVALIDDATA;
        }
    }

    if (!p->nb_poc || p->is_default) {
        *p = tmp;
    } else {
        if (p->nb_poc + tmp.nb_poc > MAX_POCS) {
            FUNC0(s->avctx, AV_LOG_ERROR, "Insufficient space for POC\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC5(p->poc + p->nb_poc, tmp.poc, tmp.nb_poc * sizeof(tmp.poc[0]));
        p->nb_poc += tmp.nb_poc;
    }

    p->is_default = 0;

    return 0;
}