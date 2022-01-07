
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int nb_nals; TYPE_2__* nals; } ;
struct TYPE_10__ {int picture_structure; scalar_t__ key_frame; int pict_type; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int type; int gb; } ;
struct TYPE_8__ {TYPE_7__ pkt; int nal_length_size; int is_avc; int sei; int ps; } ;
typedef int HEVCSEI ;
typedef TYPE_1__ HEVCParserContext ;
typedef int HEVCParamSets ;
typedef TYPE_2__ H2645NAL ;
typedef int GetBitContext ;
typedef TYPE_3__ AVCodecParserContext ;
typedef int AVCodecContext ;


 int AV_CODEC_ID_HEVC ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_STRUCTURE_UNKNOWN ;
 int AV_PICTURE_TYPE_I ;
 int av_log (int *,int ,char*,int) ;
 int ff_h2645_packet_split (TYPE_7__*,int const*,int,int *,int ,int ,int ,int,int ) ;
 int ff_hevc_decode_nal_pps (int *,int *,int *) ;
 int ff_hevc_decode_nal_sei (int *,int *,int *,int *,int) ;
 int ff_hevc_decode_nal_sps (int *,int *,int *,int) ;
 int ff_hevc_decode_nal_vps (int *,int *,int *) ;
 int ff_hevc_reset_sei (int *) ;
 int hevc_parse_slice_header (TYPE_3__*,TYPE_2__*,int *) ;

__attribute__((used)) static int parse_nal_units(AVCodecParserContext *s, const uint8_t *buf,
                           int buf_size, AVCodecContext *avctx)
{
    HEVCParserContext *ctx = s->priv_data;
    HEVCParamSets *ps = &ctx->ps;
    HEVCSEI *sei = &ctx->sei;
    int ret, i;


    s->pict_type = AV_PICTURE_TYPE_I;
    s->key_frame = 0;
    s->picture_structure = AV_PICTURE_STRUCTURE_UNKNOWN;

    ff_hevc_reset_sei(sei);

    ret = ff_h2645_packet_split(&ctx->pkt, buf, buf_size, avctx, ctx->is_avc,
                                ctx->nal_length_size, AV_CODEC_ID_HEVC, 1, 0);
    if (ret < 0)
        return ret;

    for (i = 0; i < ctx->pkt.nb_nals; i++) {
        H2645NAL *nal = &ctx->pkt.nals[i];
        GetBitContext *gb = &nal->gb;

        switch (nal->type) {
        case 128:
            ff_hevc_decode_nal_vps(gb, avctx, ps);
            break;
        case 135:
            ff_hevc_decode_nal_sps(gb, avctx, ps, 1);
            break;
        case 142:
            ff_hevc_decode_nal_pps(gb, avctx, ps);
            break;
        case 137:
        case 136:
            ff_hevc_decode_nal_sei(gb, avctx, sei, ps, nal->type);
            break;
        case 132:
        case 131:
        case 130:
        case 129:
        case 134:
        case 133:
        case 147:
        case 146:
        case 148:
        case 143:
        case 144:
        case 145:
        case 141:
        case 140:
        case 139:
        case 138:
            ret = hevc_parse_slice_header(s, nal, avctx);
            if (ret)
                return ret;
            break;
        }
    }

    av_log(avctx, AV_LOG_ERROR, "missing picture in access unit with size %d\n", buf_size);
    return -1;
}
