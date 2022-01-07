
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_14__ {int ncomponents; int avctx; int g; } ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_10__ {TYPE_2__ member_0; } ;
struct TYPE_13__ {int nb_poc; scalar_t__ is_default; TYPE_3__* poc; TYPE_1__ member_0; } ;
struct TYPE_12__ {int RSpoc; int CSpoc; int REpoc; int CEpoc; void* Ppoc; int LYEpoc; } ;
typedef TYPE_3__ Jpeg2000POCEntry ;
typedef TYPE_4__ Jpeg2000POC ;
typedef TYPE_5__ Jpeg2000DecoderContext ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int MAX_POCS ;
 int av_log (int ,int ,char*,...) ;
 int avpriv_request_sample (int ,char*,...) ;
 int bytestream2_get_be16u (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_byteu (int *) ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static int get_poc(Jpeg2000DecoderContext *s, int size, Jpeg2000POC *p)
{
    int i;
    int elem_size = s->ncomponents <= 257 ? 7 : 9;
    Jpeg2000POC tmp = {{{0}}};

    if (bytestream2_get_bytes_left(&s->g) < 5 || size < 2 + elem_size) {
        av_log(s->avctx, AV_LOG_ERROR, "Insufficient space for POC\n");
        return AVERROR_INVALIDDATA;
    }

    if (elem_size > 7) {
        avpriv_request_sample(s->avctx, "Fat POC not supported");
        return AVERROR_PATCHWELCOME;
    }

    tmp.nb_poc = (size - 2) / elem_size;
    if (tmp.nb_poc > MAX_POCS) {
        avpriv_request_sample(s->avctx, "Too many POCs (%d)", tmp.nb_poc);
        return AVERROR_PATCHWELCOME;
    }

    for (i = 0; i<tmp.nb_poc; i++) {
        Jpeg2000POCEntry *e = &tmp.poc[i];
        e->RSpoc = bytestream2_get_byteu(&s->g);
        e->CSpoc = bytestream2_get_byteu(&s->g);
        e->LYEpoc = bytestream2_get_be16u(&s->g);
        e->REpoc = bytestream2_get_byteu(&s->g);
        e->CEpoc = bytestream2_get_byteu(&s->g);
        e->Ppoc = bytestream2_get_byteu(&s->g);
        if (!e->CEpoc)
            e->CEpoc = 256;
        if (e->CEpoc > s->ncomponents)
            e->CEpoc = s->ncomponents;
        if ( e->RSpoc >= e->REpoc || e->REpoc > 33
            || e->CSpoc >= e->CEpoc || e->CEpoc > s->ncomponents
            || !e->LYEpoc) {
            av_log(s->avctx, AV_LOG_ERROR, "POC Entry %d is invalid (%d, %d, %d, %d, %d, %d)\n", i,
                e->RSpoc, e->CSpoc, e->LYEpoc, e->REpoc, e->CEpoc, e->Ppoc
            );
            return AVERROR_INVALIDDATA;
        }
    }

    if (!p->nb_poc || p->is_default) {
        *p = tmp;
    } else {
        if (p->nb_poc + tmp.nb_poc > MAX_POCS) {
            av_log(s->avctx, AV_LOG_ERROR, "Insufficient space for POC\n");
            return AVERROR_INVALIDDATA;
        }
        memcpy(p->poc + p->nb_poc, tmp.poc, tmp.nb_poc * sizeof(tmp.poc[0]));
        p->nb_poc += tmp.nb_poc;
    }

    p->is_default = 0;

    return 0;
}
