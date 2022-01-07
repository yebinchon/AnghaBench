
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum TwinVQFrameType { ____Placeholder_TwinVQFrameType } TwinVQFrameType ;
struct TYPE_10__ {int size; TYPE_1__* fmode; } ;
typedef TYPE_3__ TwinVQModeTab ;
struct TYPE_11__ {float* tmp_buf; float* curr_frame; int* last_block_pos; TYPE_2__* fdsp; TYPE_3__* mtab; TYPE_5__* mdct_ctx; } ;
typedef TYPE_4__ TwinVQContext ;
struct TYPE_12__ {int (* imdct_half ) (TYPE_5__*,float*,float*) ;} ;
struct TYPE_9__ {int (* vector_fmul_window ) (float*,float*,float*,int ,int) ;} ;
struct TYPE_8__ {int sub; } ;
typedef TYPE_5__ FFTContext ;


 size_t TWINVQ_FT_LONG ;
 size_t TWINVQ_FT_MEDIUM ;
 size_t TWINVQ_FT_SHORT ;
 size_t av_log2 (int) ;
 int * ff_sine_windows ;
 int memcpy (float*,float*,int) ;
 int stub1 (TYPE_5__*,float*,float*) ;
 int stub2 (float*,float*,float*,int ,int) ;
 size_t* wtype_to_wsize ;

__attribute__((used)) static void imdct_and_window(TwinVQContext *tctx, enum TwinVQFrameType ftype,
                             int wtype, float *in, float *prev, int ch)
{
    FFTContext *mdct = &tctx->mdct_ctx[ftype];
    const TwinVQModeTab *mtab = tctx->mtab;
    int bsize = mtab->size / mtab->fmode[ftype].sub;
    int size = mtab->size;
    float *buf1 = tctx->tmp_buf;
    int j, first_wsize, wsize;
    float *out = tctx->curr_frame + 2 * ch * mtab->size;
    float *out2 = out;
    float *prev_buf;
    int types_sizes[] = {
        mtab->size / mtab->fmode[TWINVQ_FT_LONG].sub,
        mtab->size / mtab->fmode[TWINVQ_FT_MEDIUM].sub,
        mtab->size / (mtab->fmode[TWINVQ_FT_SHORT].sub * 2),
    };

    wsize = types_sizes[wtype_to_wsize[wtype]];
    first_wsize = wsize;
    prev_buf = prev + (size - bsize) / 2;

    for (j = 0; j < mtab->fmode[ftype].sub; j++) {
        int sub_wtype = ftype == TWINVQ_FT_MEDIUM ? 8 : wtype;

        if (!j && wtype == 4)
            sub_wtype = 4;
        else if (j == mtab->fmode[ftype].sub - 1 && wtype == 7)
            sub_wtype = 7;

        wsize = types_sizes[wtype_to_wsize[sub_wtype]];

        mdct->imdct_half(mdct, buf1 + bsize * j, in + bsize * j);

        tctx->fdsp->vector_fmul_window(out2, prev_buf + (bsize - wsize) / 2,
                                      buf1 + bsize * j,
                                      ff_sine_windows[av_log2(wsize)],
                                      wsize / 2);
        out2 += wsize;

        memcpy(out2, buf1 + bsize * j + wsize / 2,
               (bsize - wsize / 2) * sizeof(float));

        out2 += ftype == TWINVQ_FT_MEDIUM ? (bsize - wsize) / 2 : bsize - wsize;

        prev_buf = buf1 + bsize * j + bsize / 2;
    }

    tctx->last_block_pos[ch] = (size + first_wsize) / 2;
}
