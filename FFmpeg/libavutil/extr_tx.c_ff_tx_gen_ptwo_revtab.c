
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m; int inv; int* revtab; } ;
typedef TYPE_1__ AVTXContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int* av_malloc (int const) ;
 int const split_radix_permutation (int,int const,int const) ;

int ff_tx_gen_ptwo_revtab(AVTXContext *s)
{
    const int m = s->m, inv = s->inv;

    if (!(s->revtab = av_malloc(m*sizeof(*s->revtab))))
        return AVERROR(ENOMEM);


    for (int i = 0; i < m; i++) {
        int k = -split_radix_permutation(i, m, inv) & (m - 1);
        s->revtab[k] = i;
    }

    return 0;
}
