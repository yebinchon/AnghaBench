
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ptrdiff_t ;
struct TYPE_16__ {TYPE_5__* sps; } ;
struct TYPE_13__ {int (* put_pcm ) (int *,int,int,int,int *,int) ;} ;
struct TYPE_12__ {int disable_deblocking_filter_flag; } ;
struct TYPE_18__ {TYPE_6__ ps; TYPE_3__ hevcdsp; TYPE_2__ sh; TYPE_1__* frame; TYPE_7__* HEVClc; } ;
struct TYPE_17__ {int cc; } ;
struct TYPE_14__ {int bit_depth; int bit_depth_chroma; } ;
struct TYPE_15__ {int pixel_shift; int* vshift; int* hshift; TYPE_4__ pcm; scalar_t__ chroma_format_idc; } ;
struct TYPE_11__ {int* linesize; int ** data; } ;
typedef TYPE_7__ HEVCLocalContext ;
typedef TYPE_8__ HEVCContext ;
typedef int GetBitContext ;


 int ff_hevc_deblocking_boundary_strengths (TYPE_8__*,int,int,int) ;
 int init_get_bits (int *,int const*,int) ;
 int * skip_bytes (int *,int) ;
 int stub1 (int *,int,int,int,int *,int) ;
 int stub2 (int *,int,int,int,int *,int) ;
 int stub3 (int *,int,int,int,int *,int) ;

__attribute__((used)) static int hls_pcm_sample(HEVCContext *s, int x0, int y0, int log2_cb_size)
{
    HEVCLocalContext *lc = s->HEVClc;
    GetBitContext gb;
    int cb_size = 1 << log2_cb_size;
    ptrdiff_t stride0 = s->frame->linesize[0];
    ptrdiff_t stride1 = s->frame->linesize[1];
    ptrdiff_t stride2 = s->frame->linesize[2];
    uint8_t *dst0 = &s->frame->data[0][y0 * stride0 + (x0 << s->ps.sps->pixel_shift)];
    uint8_t *dst1 = &s->frame->data[1][(y0 >> s->ps.sps->vshift[1]) * stride1 + ((x0 >> s->ps.sps->hshift[1]) << s->ps.sps->pixel_shift)];
    uint8_t *dst2 = &s->frame->data[2][(y0 >> s->ps.sps->vshift[2]) * stride2 + ((x0 >> s->ps.sps->hshift[2]) << s->ps.sps->pixel_shift)];

    int length = cb_size * cb_size * s->ps.sps->pcm.bit_depth +
                         (((cb_size >> s->ps.sps->hshift[1]) * (cb_size >> s->ps.sps->vshift[1])) +
                          ((cb_size >> s->ps.sps->hshift[2]) * (cb_size >> s->ps.sps->vshift[2]))) *
                          s->ps.sps->pcm.bit_depth_chroma;
    const uint8_t *pcm = skip_bytes(&lc->cc, (length + 7) >> 3);
    int ret;

    if (!s->sh.disable_deblocking_filter_flag)
        ff_hevc_deblocking_boundary_strengths(s, x0, y0, log2_cb_size);

    ret = init_get_bits(&gb, pcm, length);
    if (ret < 0)
        return ret;

    s->hevcdsp.put_pcm(dst0, stride0, cb_size, cb_size, &gb, s->ps.sps->pcm.bit_depth);
    if (s->ps.sps->chroma_format_idc) {
        s->hevcdsp.put_pcm(dst1, stride1,
                           cb_size >> s->ps.sps->hshift[1],
                           cb_size >> s->ps.sps->vshift[1],
                           &gb, s->ps.sps->pcm.bit_depth_chroma);
        s->hevcdsp.put_pcm(dst2, stride2,
                           cb_size >> s->ps.sps->hshift[2],
                           cb_size >> s->ps.sps->vshift[2],
                           &gb, s->ps.sps->pcm.bit_depth_chroma);
    }

    return 0;
}
