
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__* pf_gains_old; scalar_t__* pf_gains; scalar_t__* pf_gains_new; scalar_t__ buf; int pf_period; int pf_period_old; int pf_period_new; } ;
struct TYPE_7__ {int (* postfilter ) (scalar_t__,int ,scalar_t__*,int const) ;} ;
struct TYPE_8__ {int blocksize; int blocks; TYPE_1__ opusdsp; } ;
typedef TYPE_2__ CeltFrame ;
typedef TYPE_3__ CeltBlock ;


 int CELT_OVERLAP ;
 scalar_t__ FLT_EPSILON ;
 int celt_postfilter_apply_transition (TYPE_3__*,scalar_t__) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 int stub1 (scalar_t__,int ,scalar_t__*,int const) ;

__attribute__((used)) static void celt_postfilter(CeltFrame *f, CeltBlock *block)
{
    int len = f->blocksize * f->blocks;
    const int filter_len = len - 2 * CELT_OVERLAP;

    celt_postfilter_apply_transition(block, block->buf + 1024);

    block->pf_period_old = block->pf_period;
    memcpy(block->pf_gains_old, block->pf_gains, sizeof(block->pf_gains));

    block->pf_period = block->pf_period_new;
    memcpy(block->pf_gains, block->pf_gains_new, sizeof(block->pf_gains));

    if (len > CELT_OVERLAP) {
        celt_postfilter_apply_transition(block, block->buf + 1024 + CELT_OVERLAP);

        if (block->pf_gains[0] > FLT_EPSILON && filter_len > 0)
            f->opusdsp.postfilter(block->buf + 1024 + 2 * CELT_OVERLAP,
                                  block->pf_period, block->pf_gains,
                                  filter_len);

        block->pf_period_old = block->pf_period;
        memcpy(block->pf_gains_old, block->pf_gains, sizeof(block->pf_gains));
    }

    memmove(block->buf, block->buf + len, (1024 + CELT_OVERLAP / 2) * sizeof(float));
}
