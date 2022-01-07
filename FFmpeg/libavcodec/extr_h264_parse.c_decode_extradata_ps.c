
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int type; int size_bits; int gb; int raw_size; int raw_data; } ;
struct TYPE_5__ {int nb_nals; TYPE_2__* nals; int member_0; } ;
typedef int H264ParamSets ;
typedef TYPE_1__ H2645Packet ;
typedef TYPE_2__ H2645NAL ;
typedef int GetBitContext ;


 int AV_CODEC_ID_H264 ;
 int AV_LOG_DEBUG ;
 int AV_LOG_VERBOSE ;


 int av_log (void*,int ,char*,...) ;
 int ff_h2645_packet_split (TYPE_1__*,int const*,int,void*,int,int,int ,int,int ) ;
 int ff_h2645_packet_uninit (TYPE_1__*) ;
 int ff_h264_decode_picture_parameter_set (int *,void*,int *,int ) ;
 int ff_h264_decode_seq_parameter_set (int *,void*,int *,int) ;
 int init_get_bits8 (int *,int ,int ) ;

__attribute__((used)) static int decode_extradata_ps(const uint8_t *data, int size, H264ParamSets *ps,
                               int is_avc, void *logctx)
{
    H2645Packet pkt = { 0 };
    int i, ret = 0;

    ret = ff_h2645_packet_split(&pkt, data, size, logctx, is_avc, 2, AV_CODEC_ID_H264, 1, 0);
    if (ret < 0) {
        ret = 0;
        goto fail;
    }

    for (i = 0; i < pkt.nb_nals; i++) {
        H2645NAL *nal = &pkt.nals[i];
        switch (nal->type) {
        case 128: {
            GetBitContext tmp_gb = nal->gb;
            ret = ff_h264_decode_seq_parameter_set(&tmp_gb, logctx, ps, 0);
            if (ret >= 0)
                break;
            av_log(logctx, AV_LOG_DEBUG,
                   "SPS decoding failure, trying again with the complete NAL\n");
            init_get_bits8(&tmp_gb, nal->raw_data + 1, nal->raw_size - 1);
            ret = ff_h264_decode_seq_parameter_set(&tmp_gb, logctx, ps, 0);
            if (ret >= 0)
                break;
            ret = ff_h264_decode_seq_parameter_set(&nal->gb, logctx, ps, 1);
            if (ret < 0)
                goto fail;
            break;
        }
        case 129:
            ret = ff_h264_decode_picture_parameter_set(&nal->gb, logctx, ps,
                                                       nal->size_bits);
            if (ret < 0)
                goto fail;
            break;
        default:
            av_log(logctx, AV_LOG_VERBOSE, "Ignoring NAL type %d in extradata\n",
                   nal->type);
            break;
        }
    }

fail:
    ff_h2645_packet_uninit(&pkt);
    return ret;
}
