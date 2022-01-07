
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int type; int gb; } ;
struct TYPE_5__ {int nb_nals; TYPE_2__* nals; int member_0; } ;
typedef int HEVCSEI ;
typedef int HEVCParamSets ;
typedef TYPE_1__ H2645Packet ;
typedef TYPE_2__ H2645NAL ;


 int AV_CODEC_ID_HEVC ;
 int AV_EF_EXPLODE ;
 int AV_LOG_VERBOSE ;





 int av_log (void*,int ,char*,int) ;
 int ff_h2645_packet_split (TYPE_1__*,int const*,int,void*,int,int,int ,int,int ) ;
 int ff_h2645_packet_uninit (TYPE_1__*) ;
 int ff_hevc_decode_nal_pps (int *,void*,int *) ;
 int ff_hevc_decode_nal_sei (int *,void*,int *,int *,int) ;
 int ff_hevc_decode_nal_sps (int *,void*,int *,int) ;
 int ff_hevc_decode_nal_vps (int *,void*,int *) ;

__attribute__((used)) static int hevc_decode_nal_units(const uint8_t *buf, int buf_size, HEVCParamSets *ps,
                                 HEVCSEI *sei, int is_nalff, int nal_length_size,
                                 int err_recognition, int apply_defdispwin, void *logctx)
{
    int i;
    int ret = 0;
    H2645Packet pkt = { 0 };

    ret = ff_h2645_packet_split(&pkt, buf, buf_size, logctx, is_nalff,
                                nal_length_size, AV_CODEC_ID_HEVC, 1, 0);
    if (ret < 0) {
        goto done;
    }

    for (i = 0; i < pkt.nb_nals; i++) {
        H2645NAL *nal = &pkt.nals[i];


        switch (nal->type) {
        case 128:
            ret = ff_hevc_decode_nal_vps(&nal->gb, logctx, ps);
            if (ret < 0)
                goto done;
            break;
        case 129:
            ret = ff_hevc_decode_nal_sps(&nal->gb, logctx, ps, apply_defdispwin);
            if (ret < 0)
                goto done;
            break;
        case 132:
            ret = ff_hevc_decode_nal_pps(&nal->gb, logctx, ps);
            if (ret < 0)
                goto done;
            break;
        case 131:
        case 130:
            ret = ff_hevc_decode_nal_sei(&nal->gb, logctx, sei, ps, nal->type);
            if (ret < 0)
                goto done;
            break;
        default:
            av_log(logctx, AV_LOG_VERBOSE, "Ignoring NAL type %d in extradata\n", nal->type);
            break;
        }
    }

done:
    ff_h2645_packet_uninit(&pkt);
    if (err_recognition & AV_EF_EXPLODE)
        return ret;

    return 0;
}
