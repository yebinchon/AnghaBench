
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sbg_timestamp {scalar_t__ t; scalar_t__ type; } ;
struct sbg_string {scalar_t__ s; scalar_t__ e; } ;
struct sbg_fade {int slide; int member_2; int member_1; int member_0; } ;
struct sbg_script_tseq {struct sbg_fade fade; scalar_t__ name_len; scalar_t__ name; struct sbg_timestamp ts; } ;
struct TYPE_4__ {int nb_tseq; int tseq; int block_tseq; } ;
struct TYPE_3__ {scalar_t__ t; scalar_t__ type; } ;
struct sbg_parser {int nb_tseq_max; TYPE_2__ scs; int nb_block_tseq_max; int nb_block_tseq; TYPE_1__ current_time; int err_msg; } ;
typedef scalar_t__ int64_t ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 int SBG_FADE_ADAPT ;
 int SBG_FADE_SAME ;
 struct sbg_script_tseq* alloc_array_elem (void**,int,int *,int *) ;
 scalar_t__ lex_fixed (struct sbg_parser*,char*,int) ;
 int lex_line_end (struct sbg_parser*) ;
 int lex_name (struct sbg_parser*,struct sbg_string*) ;
 int lex_space (struct sbg_parser*) ;
 int parse_fade (struct sbg_parser*,struct sbg_fade*) ;
 int parse_timestamp (struct sbg_parser*,struct sbg_timestamp*,scalar_t__*) ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static int parse_time_sequence(struct sbg_parser *p, int inblock)
{
    struct sbg_timestamp ts;
    int64_t rel_ts;
    int r;
    struct sbg_fade fade = { SBG_FADE_SAME, SBG_FADE_SAME, 0 };
    struct sbg_string name;
    struct sbg_script_tseq *tseq;

    r = parse_timestamp(p, &ts, &rel_ts);
    if (!r)
        return 0;
    if (r < 0)
        return r;
    if (ts.type) {
        if (inblock)
            return AVERROR_INVALIDDATA;
        p->current_time.type = ts.type;
        p->current_time.t = ts.t;
    } else if(!inblock && !p->current_time.type) {
        snprintf(p->err_msg, sizeof(p->err_msg),
                 "relative time without previous absolute time");
        return AVERROR_INVALIDDATA;
    }
    ts.type = p->current_time.type;
    ts.t = p->current_time.t + rel_ts;
    r = parse_fade(p, &fade);
    if (r < 0)
        return r;
    lex_space(p);
    if (!lex_name(p, &name))
        return AVERROR_INVALIDDATA;
    lex_space(p);
    if (lex_fixed(p, "->", 2)) {
        fade.slide = SBG_FADE_ADAPT;
        lex_space(p);
    }
    if (!lex_line_end(p))
        return AVERROR_INVALIDDATA;
    tseq = inblock ?
           alloc_array_elem((void **)&p->scs.block_tseq, sizeof(*tseq),
                            &p->nb_block_tseq, &p->nb_block_tseq_max) :
           alloc_array_elem((void **)&p->scs.tseq, sizeof(*tseq),
                            &p->scs.nb_tseq, &p->nb_tseq_max);
    if (!tseq)
        return AVERROR(ENOMEM);
    tseq->ts = ts;
    tseq->name = name.s;
    tseq->name_len = name.e - name.s;
    tseq->fade = fade;
    return 1;
}
