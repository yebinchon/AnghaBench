
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_17__ {int request_channel_layout; } ;
struct TYPE_16__ {scalar_t__ nfreqbands; int nchannels; int residual_encode; scalar_t__ hier_chset; scalar_t__ hier_ofs; } ;
struct TYPE_15__ {scalar_t__ nfreqbands; int nchsets; int nactivechsets; TYPE_3__* chset; scalar_t__ nreschsets; scalar_t__ nchannels; TYPE_1__* avctx; } ;
struct TYPE_14__ {TYPE_4__* priv_data; } ;
typedef TYPE_2__ DCAXllDecoder ;
typedef TYPE_3__ DCAXllChSet ;
typedef int DCAExssAsset ;
typedef TYPE_4__ DCAContext ;





 int chs_parse_header (TYPE_2__*,TYPE_3__*,int *) ;
 TYPE_3__* find_next_hier_dmix_chset (TYPE_2__*,TYPE_3__*) ;
 scalar_t__ is_hier_dmix_chset (TYPE_3__*) ;
 int prescale_down_mix (TYPE_3__*,TYPE_3__*) ;

__attribute__((used)) static int parse_sub_headers(DCAXllDecoder *s, DCAExssAsset *asset)
{
    DCAContext *dca = s->avctx->priv_data;
    DCAXllChSet *c;
    int i, ret;


    s->nfreqbands = 0;
    s->nchannels = 0;
    s->nreschsets = 0;
    for (i = 0, c = s->chset; i < s->nchsets; i++, c++) {
        c->hier_ofs = s->nchannels;
        if ((ret = chs_parse_header(s, c, asset)) < 0)
            return ret;
        if (c->nfreqbands > s->nfreqbands)
            s->nfreqbands = c->nfreqbands;
        if (c->hier_chset)
            s->nchannels += c->nchannels;
        if (c->residual_encode != (1 << c->nchannels) - 1)
            s->nreschsets++;
    }


    for (i = s->nchsets - 1, c = &s->chset[i]; i > 0; i--, c--) {
        if (is_hier_dmix_chset(c)) {
            DCAXllChSet *o = find_next_hier_dmix_chset(s, c);
            if (o)
                prescale_down_mix(c, o);
        }
    }


    switch (dca->request_channel_layout) {
    case 128:
        s->nactivechsets = 1;
        break;
    case 130:
    case 129:
        s->nactivechsets = (s->chset[0].nchannels < 5 && s->nchsets > 1) ? 2 : 1;
        break;
    default:
        s->nactivechsets = s->nchsets;
        break;
    }

    return 0;
}
