
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nb_groups; void** idx; TYPE_1__* groups; } ;
struct TYPE_7__ {int gb; int avctx; } ;
struct TYPE_6__ {int nb_exponent; int exp_ofs; } ;
typedef TYPE_1__ DBEGroup ;
typedef TYPE_2__ DBEContext ;
typedef TYPE_3__ DBEChannel ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (int ,int ,char*) ;
 void* get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;
 int memcpy (void**,void**,int) ;
 int memset (void**,int ,int) ;

__attribute__((used)) static int parse_indices(DBEContext *s, DBEChannel *c)
{
    DBEGroup *p, *g;
    int i, j;

    for (i = 0, p = ((void*)0), g = c->groups; i < c->nb_groups; i++, p = g, g++) {
        if (get_bits1(&s->gb)) {
            int start = get_bits(&s->gb, 6);

            if (start > g->nb_exponent) {
                av_log(s->avctx, AV_LOG_ERROR, "Invalid start index\n");
                return AVERROR_INVALIDDATA;
            }

            for (j = 0; j < start; j++)
                c->idx[g->exp_ofs + j] = 0;

            for (; j < g->nb_exponent; j++)
                c->idx[g->exp_ofs + j] = get_bits(&s->gb, 2);
        } else if (i && g->nb_exponent == p->nb_exponent) {
            memcpy(c->idx + g->exp_ofs,
                   c->idx + p->exp_ofs,
                   g->nb_exponent * sizeof(c->idx[0]));
        } else {
            memset(c->idx + g->exp_ofs, 0, g->nb_exponent * sizeof(c->idx[0]));
        }
    }

    return 0;
}
