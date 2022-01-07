
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;


typedef int uint8_t ;
struct TYPE_27__ {scalar_t__ pix_fmt; } ;
struct TYPE_26__ {int* linesize; int const** data; } ;
struct TYPE_24__ {scalar_t__ bytestream_start; scalar_t__ bytestream_end; } ;
struct TYPE_22__ {TYPE_6__* f; } ;
struct TYPE_25__ {int slice_width; int slice_height; int slice_x; int slice_y; int slice_coding_mode; int version; int slice_rct_by_coef; int slice_rct_ry_coef; scalar_t__ ac; scalar_t__ colorspace; int chroma_h_shift; int chroma_v_shift; TYPE_4__ c; scalar_t__ use32bit; scalar_t__ transparency; scalar_t__ chroma_planes; int ac_byte_count; int pb; scalar_t__ key_frame; TYPE_2__ picture; TYPE_1__* avctx; } ;
struct TYPE_23__ {int step; } ;
struct TYPE_21__ {TYPE_5__* priv_data; } ;
struct TYPE_20__ {TYPE_3__* comp; } ;
typedef TYPE_4__ RangeCoder ;
typedef TYPE_5__ FFV1Context ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 scalar_t__ AC_GOLOMB_RICE ;
 int AV_CEIL_RSHIFT (int,int) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_YA8 ;
 int av_assert0 (int) ;
 int av_log (TYPE_7__*,int ,char*) ;
 TYPE_18__* av_pix_fmt_desc_get (scalar_t__) ;
 int choose_rct_params (TYPE_5__*,int const**,int*,int,int) ;
 int emms_c () ;
 int encode_plane (TYPE_5__*,int const*,int const,int const,int,int,int) ;
 int encode_rgb_frame (TYPE_5__*,int const**,int,int,int*) ;
 int encode_rgb_frame32 (TYPE_5__*,int const**,int,int,int*) ;
 int encode_slice_header (TYPE_5__*,TYPE_5__*) ;
 int ff_ffv1_clear_slice_state (TYPE_5__*,TYPE_5__*) ;
 int ff_rac_terminate (TYPE_4__*,int) ;
 int init_put_bits (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static int encode_slice(AVCodecContext *c, void *arg)
{
    FFV1Context *fs = *(void **)arg;
    FFV1Context *f = fs->avctx->priv_data;
    int width = fs->slice_width;
    int height = fs->slice_height;
    int x = fs->slice_x;
    int y = fs->slice_y;
    const AVFrame *const p = f->picture.f;
    const int ps = av_pix_fmt_desc_get(c->pix_fmt)->comp[0].step;
    int ret;
    RangeCoder c_bak = fs->c;
    const uint8_t *planes[4] = {p->data[0] + ps*x + y*p->linesize[0],
                                p->data[1] ? p->data[1] + ps*x + y*p->linesize[1] : ((void*)0),
                                p->data[2] ? p->data[2] + ps*x + y*p->linesize[2] : ((void*)0),
                                p->data[3] ? p->data[3] + ps*x + y*p->linesize[3] : ((void*)0)};

    fs->slice_coding_mode = 0;
    if (f->version > 3) {
        choose_rct_params(fs, planes, p->linesize, width, height);
    } else {
        fs->slice_rct_by_coef = 1;
        fs->slice_rct_ry_coef = 1;
    }

retry:
    if (f->key_frame)
        ff_ffv1_clear_slice_state(f, fs);
    if (f->version > 2) {
        encode_slice_header(f, fs);
    }
    if (fs->ac == AC_GOLOMB_RICE) {
        fs->ac_byte_count = f->version > 2 || (!x && !y) ? ff_rac_terminate(&fs->c, f->version > 2) : 0;
        init_put_bits(&fs->pb,
                      fs->c.bytestream_start + fs->ac_byte_count,
                      fs->c.bytestream_end - fs->c.bytestream_start - fs->ac_byte_count);
    }

    if (f->colorspace == 0 && c->pix_fmt != AV_PIX_FMT_YA8) {
        const int chroma_width = AV_CEIL_RSHIFT(width, f->chroma_h_shift);
        const int chroma_height = AV_CEIL_RSHIFT(height, f->chroma_v_shift);
        const int cx = x >> f->chroma_h_shift;
        const int cy = y >> f->chroma_v_shift;

        ret = encode_plane(fs, p->data[0] + ps*x + y*p->linesize[0], width, height, p->linesize[0], 0, 1);

        if (f->chroma_planes) {
            ret |= encode_plane(fs, p->data[1] + ps*cx+cy*p->linesize[1], chroma_width, chroma_height, p->linesize[1], 1, 1);
            ret |= encode_plane(fs, p->data[2] + ps*cx+cy*p->linesize[2], chroma_width, chroma_height, p->linesize[2], 1, 1);
        }
        if (fs->transparency)
            ret |= encode_plane(fs, p->data[3] + ps*x + y*p->linesize[3], width, height, p->linesize[3], 2, 1);
    } else if (c->pix_fmt == AV_PIX_FMT_YA8) {
        ret = encode_plane(fs, p->data[0] + ps*x + y*p->linesize[0], width, height, p->linesize[0], 0, 2);
        ret |= encode_plane(fs, p->data[0] + 1 + ps*x + y*p->linesize[0], width, height, p->linesize[0], 1, 2);
    } else if (f->use32bit) {
        ret = encode_rgb_frame32(fs, planes, width, height, p->linesize);
    } else {
        ret = encode_rgb_frame(fs, planes, width, height, p->linesize);
    }
    emms_c();

    if (ret < 0) {
        av_assert0(fs->slice_coding_mode == 0);
        if (fs->version < 4 || !fs->ac) {
            av_log(c, AV_LOG_ERROR, "Buffer too small\n");
            return ret;
        }
        av_log(c, AV_LOG_DEBUG, "Coding slice as PCM\n");
        fs->slice_coding_mode = 1;
        fs->c = c_bak;
        goto retry;
    }

    return 0;
}
