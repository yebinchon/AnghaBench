#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  luma_intra_matrix ;
struct TYPE_12__ {int codec_id; scalar_t__ pix_fmt; int height; int width; TYPE_1__* codec; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int esc_pos; int slice_context_count; TYPE_2__** thread_context; } ;
struct TYPE_10__ {scalar_t__ esc_pos; } ;
struct TYPE_9__ {int priv_data_size; } ;
typedef  int /*<<< orphan*/  ScanTable ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_3__ MpegEncContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AV_CODEC_ID_AMV ; 
#define  AV_CODEC_ID_LJPEG 129 
#define  AV_CODEC_ID_MJPEG 128 
 scalar_t__ AV_PIX_FMT_BGR0 ; 
 scalar_t__ AV_PIX_FMT_BGR24 ; 
 scalar_t__ AV_PIX_FMT_BGRA ; 
 int /*<<< orphan*/  SOF0 ; 
 int /*<<< orphan*/  SOF3 ; 
 int /*<<< orphan*/  SOI ; 
 int /*<<< orphan*/  SOS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC8(AVCodecContext *avctx, PutBitContext *pb,
                                    ScanTable *intra_scantable, int pred,
                                    uint16_t luma_intra_matrix[64],
                                    uint16_t chroma_intra_matrix[64])
{
    const int lossless = avctx->codec_id != AV_CODEC_ID_MJPEG && avctx->codec_id != AV_CODEC_ID_AMV;
    int hsample[4], vsample[4];
    int i;
    int components = 3 + (avctx->pix_fmt == AV_PIX_FMT_BGRA);
    int chroma_matrix = !!FUNC4(luma_intra_matrix,
                                 chroma_intra_matrix,
                                 sizeof(luma_intra_matrix[0])*64);

    FUNC1(avctx, hsample, vsample);

    FUNC7(pb, SOI);

    // hack for AMV mjpeg format
    if(avctx->codec_id == AV_CODEC_ID_AMV) goto end;

    FUNC2(avctx, pb);

    FUNC3(avctx, pb, intra_scantable, luma_intra_matrix, chroma_intra_matrix, hsample);

    switch (avctx->codec_id) {
    case AV_CODEC_ID_MJPEG:  FUNC7(pb, SOF0 ); break;
    case AV_CODEC_ID_LJPEG:  FUNC7(pb, SOF3 ); break;
    default: FUNC0(0);
    }

    FUNC5(pb, 16, 17);
    if (lossless && (  avctx->pix_fmt == AV_PIX_FMT_BGR0
                    || avctx->pix_fmt == AV_PIX_FMT_BGRA
                    || avctx->pix_fmt == AV_PIX_FMT_BGR24))
        FUNC5(pb, 8, 9); /* 9 bits/component RCT */
    else
        FUNC5(pb, 8, 8); /* 8 bits/component */
    FUNC5(pb, 16, avctx->height);
    FUNC5(pb, 16, avctx->width);
    FUNC5(pb, 8, components); /* 3 or 4 components */

    /* Y component */
    FUNC5(pb, 8, 1); /* component number */
    FUNC5(pb, 4, hsample[0]); /* H factor */
    FUNC5(pb, 4, vsample[0]); /* V factor */
    FUNC5(pb, 8, 0); /* select matrix */

    /* Cb component */
    FUNC5(pb, 8, 2); /* component number */
    FUNC5(pb, 4, hsample[1]); /* H factor */
    FUNC5(pb, 4, vsample[1]); /* V factor */
    FUNC5(pb, 8, lossless ? 0 : chroma_matrix); /* select matrix */

    /* Cr component */
    FUNC5(pb, 8, 3); /* component number */
    FUNC5(pb, 4, hsample[2]); /* H factor */
    FUNC5(pb, 4, vsample[2]); /* V factor */
    FUNC5(pb, 8, lossless ? 0 : chroma_matrix); /* select matrix */

    if (components == 4) {
        FUNC5(pb, 8, 4); /* component number */
        FUNC5(pb, 4, hsample[3]); /* H factor */
        FUNC5(pb, 4, vsample[3]); /* V factor */
        FUNC5(pb, 8, 0); /* select matrix */
    }

    /* scan header */
    FUNC7(pb, SOS);
    FUNC5(pb, 16, 6 + 2*components); /* length */
    FUNC5(pb, 8, components); /* 3 components */

    /* Y component */
    FUNC5(pb, 8, 1); /* index */
    FUNC5(pb, 4, 0); /* DC huffman table index */
    FUNC5(pb, 4, 0); /* AC huffman table index */

    /* Cb component */
    FUNC5(pb, 8, 2); /* index */
    FUNC5(pb, 4, 1); /* DC huffman table index */
    FUNC5(pb, 4, lossless ? 0 : 1); /* AC huffman table index */

    /* Cr component */
    FUNC5(pb, 8, 3); /* index */
    FUNC5(pb, 4, 1); /* DC huffman table index */
    FUNC5(pb, 4, lossless ? 0 : 1); /* AC huffman table index */

    if (components == 4) {
        /* Alpha component */
        FUNC5(pb, 8, 4); /* index */
        FUNC5(pb, 4, 0); /* DC huffman table index */
        FUNC5(pb, 4, 0); /* AC huffman table index */
    }

    FUNC5(pb, 8, lossless ? pred : 0); /* Ss (not used) */

    switch (avctx->codec_id) {
    case AV_CODEC_ID_MJPEG:  FUNC5(pb, 8, 63); break; /* Se (not used) */
    case AV_CODEC_ID_LJPEG:  FUNC5(pb, 8,  0); break; /* not used */
    default: FUNC0(0);
    }

    FUNC5(pb, 8, 0); /* Ah/Al (not used) */

end:
    if (!lossless) {
        MpegEncContext *s = avctx->priv_data;
        FUNC0(avctx->codec->priv_data_size == sizeof(MpegEncContext));

        s->esc_pos = FUNC6(pb) >> 3;
        for(i=1; i<s->slice_context_count; i++)
            s->thread_context[i]->esc_pos = 0;
    }
}