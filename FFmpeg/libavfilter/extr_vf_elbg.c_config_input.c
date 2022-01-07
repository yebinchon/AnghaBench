
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int w; int h; int format; TYPE_3__* dst; } ;
struct TYPE_5__ {int codeword_length; int codebook_length; int rgba_map; void* codebook; void* codeword_closest_codebook_idxs; void* codeword; int pix_desc; } ;
typedef TYPE_1__ ELBGContext ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int NB_COMPONENTS ;
 int av_pix_fmt_desc_get (int ) ;
 void* av_realloc_f (void*,int,int) ;
 int ff_fill_rgba_map (int ,int ) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ELBGContext *elbg = ctx->priv;

    elbg->pix_desc = av_pix_fmt_desc_get(inlink->format);
    elbg->codeword_length = inlink->w * inlink->h;
    elbg->codeword = av_realloc_f(elbg->codeword, elbg->codeword_length,
                                  NB_COMPONENTS * sizeof(*elbg->codeword));
    if (!elbg->codeword)
        return AVERROR(ENOMEM);

    elbg->codeword_closest_codebook_idxs =
        av_realloc_f(elbg->codeword_closest_codebook_idxs, elbg->codeword_length,
                     sizeof(*elbg->codeword_closest_codebook_idxs));
    if (!elbg->codeword_closest_codebook_idxs)
        return AVERROR(ENOMEM);

    elbg->codebook = av_realloc_f(elbg->codebook, elbg->codebook_length,
                                  NB_COMPONENTS * sizeof(*elbg->codebook));
    if (!elbg->codebook)
        return AVERROR(ENOMEM);

    ff_fill_rgba_map(elbg->rgba_map, inlink->format);

    return 0;
}
