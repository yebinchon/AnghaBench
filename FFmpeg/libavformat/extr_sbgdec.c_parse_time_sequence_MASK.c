#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sbg_timestamp {scalar_t__ t; scalar_t__ type; } ;
struct sbg_string {scalar_t__ s; scalar_t__ e; } ;
struct sbg_fade {int /*<<< orphan*/  slide; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct sbg_script_tseq {struct sbg_fade fade; scalar_t__ name_len; scalar_t__ name; struct sbg_timestamp ts; } ;
struct TYPE_4__ {int /*<<< orphan*/  nb_tseq; int /*<<< orphan*/  tseq; int /*<<< orphan*/  block_tseq; } ;
struct TYPE_3__ {scalar_t__ t; scalar_t__ type; } ;
struct sbg_parser {int /*<<< orphan*/  nb_tseq_max; TYPE_2__ scs; int /*<<< orphan*/  nb_block_tseq_max; int /*<<< orphan*/  nb_block_tseq; TYPE_1__ current_time; int /*<<< orphan*/  err_msg; } ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SBG_FADE_ADAPT ; 
 int /*<<< orphan*/  SBG_FADE_SAME ; 
 struct sbg_script_tseq* FUNC1 (void**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sbg_parser*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbg_parser*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbg_parser*,struct sbg_string*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbg_parser*) ; 
 int FUNC6 (struct sbg_parser*,struct sbg_fade*) ; 
 int FUNC7 (struct sbg_parser*,struct sbg_timestamp*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static int FUNC9(struct sbg_parser *p, int inblock)
{
    struct sbg_timestamp ts;
    int64_t rel_ts;
    int r;
    struct sbg_fade fade = { SBG_FADE_SAME, SBG_FADE_SAME, 0 };
    struct sbg_string name;
    struct sbg_script_tseq *tseq;

    r = FUNC7(p, &ts, &rel_ts);
    if (!r)
        return 0;
    if (r < 0)
        return r;
    if (ts.type) {
        if (inblock)
            return AVERROR_INVALIDDATA;
        p->current_time.type = ts.type;
        p->current_time.t    = ts.t;
    } else if(!inblock && !p->current_time.type) {
        FUNC8(p->err_msg, sizeof(p->err_msg),
                 "relative time without previous absolute time");
        return AVERROR_INVALIDDATA;
    }
    ts.type = p->current_time.type;
    ts.t    = p->current_time.t + rel_ts;
    r = FUNC6(p, &fade);
    if (r < 0)
        return r;
    FUNC5(p);
    if (!FUNC4(p, &name))
        return AVERROR_INVALIDDATA;
    FUNC5(p);
    if (FUNC2(p, "->", 2)) {
        fade.slide = SBG_FADE_ADAPT;
        FUNC5(p);
    }
    if (!FUNC3(p))
        return AVERROR_INVALIDDATA;
    tseq = inblock ?
           FUNC1((void **)&p->scs.block_tseq, sizeof(*tseq),
                            &p->nb_block_tseq, &p->nb_block_tseq_max) :
           FUNC1((void **)&p->scs.tseq, sizeof(*tseq),
                            &p->scs.nb_tseq, &p->nb_tseq_max);
    if (!tseq)
        return FUNC0(ENOMEM);
    tseq->ts       = ts;
    tseq->name     = name.s;
    tseq->name_len = name.e - name.s;
    tseq->fade     = fade;
    return 1;
}