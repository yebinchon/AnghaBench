#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_18__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_27__ {scalar_t__ pix_fmt; } ;
struct TYPE_26__ {int* linesize; int /*<<< orphan*/  const** data; } ;
struct TYPE_24__ {scalar_t__ bytestream_start; scalar_t__ bytestream_end; } ;
struct TYPE_22__ {TYPE_6__* f; } ;
struct TYPE_25__ {int slice_width; int slice_height; int slice_x; int slice_y; int slice_coding_mode; int version; int slice_rct_by_coef; int slice_rct_ry_coef; scalar_t__ ac; scalar_t__ colorspace; int chroma_h_shift; int chroma_v_shift; TYPE_4__ c; scalar_t__ use32bit; scalar_t__ transparency; scalar_t__ chroma_planes; int /*<<< orphan*/  ac_byte_count; int /*<<< orphan*/  pb; scalar_t__ key_frame; TYPE_2__ picture; TYPE_1__* avctx; } ;
struct TYPE_23__ {int step; } ;
struct TYPE_21__ {TYPE_5__* priv_data; } ;
struct TYPE_20__ {TYPE_3__* comp; } ;
typedef  TYPE_4__ RangeCoder ;
typedef  TYPE_5__ FFV1Context ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVCodecContext ;

/* Variables and functions */
 scalar_t__ AC_GOLOMB_RICE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_YA8 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_18__* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/  const**,int*,int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_5__*,int /*<<< orphan*/  const*,int const,int const,int,int,int) ; 
 int FUNC7 (TYPE_5__*,int /*<<< orphan*/  const**,int,int,int*) ; 
 int FUNC8 (TYPE_5__*,int /*<<< orphan*/  const**,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC13(AVCodecContext *c, void *arg)
{
    FFV1Context *fs  = *(void **)arg;
    FFV1Context *f   = fs->avctx->priv_data;
    int width        = fs->slice_width;
    int height       = fs->slice_height;
    int x            = fs->slice_x;
    int y            = fs->slice_y;
    const AVFrame *const p = f->picture.f;
    const int ps     = FUNC3(c->pix_fmt)->comp[0].step;
    int ret;
    RangeCoder c_bak = fs->c;
    const uint8_t *planes[4] = {p->data[0] + ps*x + y*p->linesize[0],
                                p->data[1] ? p->data[1] + ps*x + y*p->linesize[1] : NULL,
                                p->data[2] ? p->data[2] + ps*x + y*p->linesize[2] : NULL,
                                p->data[3] ? p->data[3] + ps*x + y*p->linesize[3] : NULL};

    fs->slice_coding_mode = 0;
    if (f->version > 3) {
        FUNC4(fs, planes, p->linesize, width, height);
    } else {
        fs->slice_rct_by_coef = 1;
        fs->slice_rct_ry_coef = 1;
    }

retry:
    if (f->key_frame)
        FUNC10(f, fs);
    if (f->version > 2) {
        FUNC9(f, fs);
    }
    if (fs->ac == AC_GOLOMB_RICE) {
        fs->ac_byte_count = f->version > 2 || (!x && !y) ? FUNC11(&fs->c, f->version > 2) : 0;
        FUNC12(&fs->pb,
                      fs->c.bytestream_start + fs->ac_byte_count,
                      fs->c.bytestream_end - fs->c.bytestream_start - fs->ac_byte_count);
    }

    if (f->colorspace == 0 && c->pix_fmt != AV_PIX_FMT_YA8) {
        const int chroma_width  = FUNC0(width,  f->chroma_h_shift);
        const int chroma_height = FUNC0(height, f->chroma_v_shift);
        const int cx            = x >> f->chroma_h_shift;
        const int cy            = y >> f->chroma_v_shift;

        ret = FUNC6(fs, p->data[0] + ps*x + y*p->linesize[0], width, height, p->linesize[0], 0, 1);

        if (f->chroma_planes) {
            ret |= FUNC6(fs, p->data[1] + ps*cx+cy*p->linesize[1], chroma_width, chroma_height, p->linesize[1], 1, 1);
            ret |= FUNC6(fs, p->data[2] + ps*cx+cy*p->linesize[2], chroma_width, chroma_height, p->linesize[2], 1, 1);
        }
        if (fs->transparency)
            ret |= FUNC6(fs, p->data[3] + ps*x + y*p->linesize[3], width, height, p->linesize[3], 2, 1);
    } else if (c->pix_fmt == AV_PIX_FMT_YA8) {
        ret  = FUNC6(fs, p->data[0] +     ps*x + y*p->linesize[0], width, height, p->linesize[0], 0, 2);
        ret |= FUNC6(fs, p->data[0] + 1 + ps*x + y*p->linesize[0], width, height, p->linesize[0], 1, 2);
    } else if (f->use32bit) {
        ret = FUNC8(fs, planes, width, height, p->linesize);
    } else {
        ret = FUNC7(fs, planes, width, height, p->linesize);
    }
    FUNC5();

    if (ret < 0) {
        FUNC1(fs->slice_coding_mode == 0);
        if (fs->version < 4 || !fs->ac) {
            FUNC2(c, AV_LOG_ERROR, "Buffer too small\n");
            return ret;
        }
        FUNC2(c, AV_LOG_DEBUG, "Coding slice as PCM\n");
        fs->slice_coding_mode = 1;
        fs->c = c_bak;
        goto retry;
    }

    return 0;
}