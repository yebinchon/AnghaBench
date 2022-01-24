#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {int nb_nals; TYPE_2__* nals; } ;
struct TYPE_10__ {int /*<<< orphan*/  picture_structure; scalar_t__ key_frame; int /*<<< orphan*/  pict_type; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int type; int /*<<< orphan*/  gb; } ;
struct TYPE_8__ {TYPE_7__ pkt; int /*<<< orphan*/  nal_length_size; int /*<<< orphan*/  is_avc; int /*<<< orphan*/  sei; int /*<<< orphan*/  ps; } ;
typedef  int /*<<< orphan*/  HEVCSEI ;
typedef  TYPE_1__ HEVCParserContext ;
typedef  int /*<<< orphan*/  HEVCParamSets ;
typedef  TYPE_2__ H2645NAL ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_3__ AVCodecParserContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_ID_HEVC ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PICTURE_STRUCTURE_UNKNOWN ; 
 int /*<<< orphan*/  AV_PICTURE_TYPE_I ; 
#define  HEVC_NAL_BLA_N_LP 148 
#define  HEVC_NAL_BLA_W_LP 147 
#define  HEVC_NAL_BLA_W_RADL 146 
#define  HEVC_NAL_CRA_NUT 145 
#define  HEVC_NAL_IDR_N_LP 144 
#define  HEVC_NAL_IDR_W_RADL 143 
#define  HEVC_NAL_PPS 142 
#define  HEVC_NAL_RADL_N 141 
#define  HEVC_NAL_RADL_R 140 
#define  HEVC_NAL_RASL_N 139 
#define  HEVC_NAL_RASL_R 138 
#define  HEVC_NAL_SEI_PREFIX 137 
#define  HEVC_NAL_SEI_SUFFIX 136 
#define  HEVC_NAL_SPS 135 
#define  HEVC_NAL_STSA_N 134 
#define  HEVC_NAL_STSA_R 133 
#define  HEVC_NAL_TRAIL_N 132 
#define  HEVC_NAL_TRAIL_R 131 
#define  HEVC_NAL_TSA_N 130 
#define  HEVC_NAL_TSA_R 129 
#define  HEVC_NAL_VPS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_7__*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVCodecParserContext *s, const uint8_t *buf,
                           int buf_size, AVCodecContext *avctx)
{
    HEVCParserContext *ctx = s->priv_data;
    HEVCParamSets *ps = &ctx->ps;
    HEVCSEI *sei = &ctx->sei;
    int ret, i;

    /* set some sane default values */
    s->pict_type         = AV_PICTURE_TYPE_I;
    s->key_frame         = 0;
    s->picture_structure = AV_PICTURE_STRUCTURE_UNKNOWN;

    FUNC6(sei);

    ret = FUNC1(&ctx->pkt, buf, buf_size, avctx, ctx->is_avc,
                                ctx->nal_length_size, AV_CODEC_ID_HEVC, 1, 0);
    if (ret < 0)
        return ret;

    for (i = 0; i < ctx->pkt.nb_nals; i++) {
        H2645NAL *nal = &ctx->pkt.nals[i];
        GetBitContext *gb = &nal->gb;

        switch (nal->type) {
        case HEVC_NAL_VPS:
            FUNC5(gb, avctx, ps);
            break;
        case HEVC_NAL_SPS:
            FUNC4(gb, avctx, ps, 1);
            break;
        case HEVC_NAL_PPS:
            FUNC2(gb, avctx, ps);
            break;
        case HEVC_NAL_SEI_PREFIX:
        case HEVC_NAL_SEI_SUFFIX:
            FUNC3(gb, avctx, sei, ps, nal->type);
            break;
        case HEVC_NAL_TRAIL_N:
        case HEVC_NAL_TRAIL_R:
        case HEVC_NAL_TSA_N:
        case HEVC_NAL_TSA_R:
        case HEVC_NAL_STSA_N:
        case HEVC_NAL_STSA_R:
        case HEVC_NAL_BLA_W_LP:
        case HEVC_NAL_BLA_W_RADL:
        case HEVC_NAL_BLA_N_LP:
        case HEVC_NAL_IDR_W_RADL:
        case HEVC_NAL_IDR_N_LP:
        case HEVC_NAL_CRA_NUT:
        case HEVC_NAL_RADL_N:
        case HEVC_NAL_RADL_R:
        case HEVC_NAL_RASL_N:
        case HEVC_NAL_RASL_R:
            ret = FUNC7(s, nal, avctx);
            if (ret)
                return ret;
            break;
        }
    }
    /* didn't find a picture! */
    FUNC0(avctx, AV_LOG_ERROR, "missing picture in access unit with size %d\n", buf_size);
    return -1;
}