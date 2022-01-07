
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nb_block_sizes; int fdsp; int * int_table; int * level_table; int * run_table; int * coef_vlc; int hgain_vlc; scalar_t__ use_noise_coding; int exp_vlc; scalar_t__ use_exp_vlc; int * mdct_ctx; } ;
typedef TYPE_1__ WMACodecContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef TYPE_2__ AVCodecContext ;


 int av_freep (int *) ;
 int ff_free_vlc (int *) ;
 int ff_mdct_end (int *) ;

int ff_wma_end(AVCodecContext *avctx)
{
    WMACodecContext *s = avctx->priv_data;
    int i;

    for (i = 0; i < s->nb_block_sizes; i++)
        ff_mdct_end(&s->mdct_ctx[i]);

    if (s->use_exp_vlc)
        ff_free_vlc(&s->exp_vlc);
    if (s->use_noise_coding)
        ff_free_vlc(&s->hgain_vlc);
    for (i = 0; i < 2; i++) {
        ff_free_vlc(&s->coef_vlc[i]);
        av_freep(&s->run_table[i]);
        av_freep(&s->level_table[i]);
        av_freep(&s->int_table[i]);
    }
    av_freep(&s->fdsp);

    return 0;
}
