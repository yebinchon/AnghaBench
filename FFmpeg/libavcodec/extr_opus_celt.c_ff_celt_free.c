
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* dsp; int pvq; int * imdct; } ;
typedef TYPE_1__ CeltFrame ;


 int FF_ARRAY_ELEMS (int *) ;
 int av_freep (TYPE_1__**) ;
 int ff_celt_pvq_uninit (int *) ;
 int ff_mdct15_uninit (int *) ;

void ff_celt_free(CeltFrame **f)
{
    CeltFrame *frm = *f;
    int i;

    if (!frm)
        return;

    for (i = 0; i < FF_ARRAY_ELEMS(frm->imdct); i++)
        ff_mdct15_uninit(&frm->imdct[i]);

    ff_celt_pvq_uninit(&frm->pvq);

    av_freep(&frm->dsp);
    av_freep(f);
}
