#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_5__ {scalar_t__ num; scalar_t__ den; } ;
struct TYPE_6__ {int flags; scalar_t__ pix_fmt; scalar_t__ color_range; TYPE_1__ sample_aspect_ratio; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ AVRational ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  APP0 ; 
 scalar_t__ AVCOL_RANGE_JPEG ; 
 scalar_t__ AVCOL_RANGE_MPEG ; 
 int AV_CODEC_FLAG_BITEXACT ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_PIX_FMT_YUV420P ; 
 scalar_t__ AV_PIX_FMT_YUV422P ; 
 scalar_t__ AV_PIX_FMT_YUV444P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  COM ; 
 char* LIBAVCODEC_IDENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static void FUNC9(AVCodecContext *avctx, PutBitContext *p)
{
    int size;
    uint8_t *ptr;

    if (avctx->sample_aspect_ratio.num > 0 && avctx->sample_aspect_ratio.den > 0) {
        AVRational sar = avctx->sample_aspect_ratio;

        if (sar.num > 65535 || sar.den > 65535) {
            if (!FUNC2(&sar.num, &sar.den, avctx->sample_aspect_ratio.num, avctx->sample_aspect_ratio.den, 65535))
                FUNC1(avctx, AV_LOG_WARNING,
                    "Cannot store exact aspect ratio %d:%d\n",
                    avctx->sample_aspect_ratio.num,
                    avctx->sample_aspect_ratio.den);
        }

        /* JFIF header */
        FUNC7(p, APP0);
        FUNC5(p, 16, 16);
        FUNC3(p, "JFIF", 1); /* this puts the trailing zero-byte too */
        /* The most significant byte is used for major revisions, the least
         * significant byte for minor revisions. Version 1.02 is the current
         * released revision. */
        FUNC5(p, 16, 0x0102);
        FUNC5(p,  8, 0);              /* units type: 0 - aspect ratio */
        FUNC5(p, 16, sar.num);
        FUNC5(p, 16, sar.den);
        FUNC5(p, 8, 0); /* thumbnail width */
        FUNC5(p, 8, 0); /* thumbnail height */
    }

    /* comment */
    if (!(avctx->flags & AV_CODEC_FLAG_BITEXACT)) {
        FUNC7(p, COM);
        FUNC4(p);
        ptr = FUNC6(p);
        FUNC5(p, 16, 0); /* patched later */
        FUNC3(p, LIBAVCODEC_IDENT, 1);
        size = FUNC8(LIBAVCODEC_IDENT)+3;
        FUNC0(ptr, size);
    }

    if (((avctx->pix_fmt == AV_PIX_FMT_YUV420P ||
          avctx->pix_fmt == AV_PIX_FMT_YUV422P ||
          avctx->pix_fmt == AV_PIX_FMT_YUV444P) && avctx->color_range != AVCOL_RANGE_JPEG)
        || avctx->color_range == AVCOL_RANGE_MPEG) {
        FUNC7(p, COM);
        FUNC4(p);
        ptr = FUNC6(p);
        FUNC5(p, 16, 0); /* patched later */
        FUNC3(p, "CS=ITU601", 1);
        size = FUNC8("CS=ITU601")+3;
        FUNC0(ptr, size);
    }
}