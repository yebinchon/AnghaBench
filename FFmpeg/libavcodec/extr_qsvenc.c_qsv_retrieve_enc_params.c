
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_23__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int vps_buf ;
typedef int uint8_t ;
typedef int sps_buf ;
typedef int pps_buf ;
struct TYPE_34__ {int BufferSz; int BufferId; } ;
struct TYPE_36__ {int VPSBufSize; int * VPSBuffer; TYPE_5__ Header; } ;
typedef TYPE_7__ mfxExtCodingOptionVPS ;
struct TYPE_29__ {int BufferSz; int BufferId; } ;
struct TYPE_37__ {int SPSBufSize; int PPSBufSize; int * PPSBuffer; int * SPSBuffer; TYPE_1__ Header; } ;
typedef TYPE_8__ mfxExtCodingOptionSPSPPS ;
struct TYPE_33__ {int BufferSz; int BufferId; } ;
struct TYPE_38__ {TYPE_4__ Header; } ;
typedef TYPE_9__ mfxExtCodingOption3 ;
struct TYPE_32__ {int BufferSz; int BufferId; } ;
struct TYPE_24__ {TYPE_3__ Header; } ;
typedef TYPE_10__ mfxExtCodingOption2 ;
struct TYPE_31__ {int BufferSz; int BufferId; } ;
struct TYPE_25__ {TYPE_2__ Header; } ;
typedef TYPE_11__ mfxExtCodingOption ;
typedef int mfxExtBuffer ;
typedef int extradata_vps ;
typedef int extradata ;
typedef int co3 ;
typedef int co2 ;
typedef int co ;
struct TYPE_35__ {int BufferSizeInKB; int BRCParamMultiplier; } ;
struct TYPE_30__ {int NumExtParam; TYPE_6__ mfx; int ** ExtParam; } ;
struct TYPE_28__ {int buffer_size; int avg_bitrate; int min_bitrate; int max_bitrate; } ;
struct TYPE_27__ {scalar_t__ codec_id; int extradata_size; int extradata; int rc_buffer_size; int bit_rate; int rc_min_rate; int rc_max_rate; } ;
struct TYPE_26__ {int hevc_vps; int packet_size; TYPE_23__ param; int session; int ver; } ;
typedef TYPE_12__ QSVEncContext ;
typedef TYPE_13__ AVCodecContext ;
typedef TYPE_14__ AVCPBProperties ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 scalar_t__ AV_CODEC_ID_HEVC ;
 scalar_t__ AV_CODEC_ID_MPEG2VIDEO ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int MFXVideoENCODE_GetVideoParam (int ,TYPE_23__*) ;
 int MFX_EXTBUFF_CODING_OPTION ;
 int MFX_EXTBUFF_CODING_OPTION2 ;
 int MFX_EXTBUFF_CODING_OPTION3 ;
 int MFX_EXTBUFF_CODING_OPTION_SPSPPS ;
 int MFX_EXTBUFF_CODING_OPTION_VPS ;
 int QSV_HAVE_CO2 ;
 int QSV_HAVE_CO3 ;
 int QSV_HAVE_CO_VPS ;
 scalar_t__ QSV_RUNTIME_VERSION_ATLEAST (int ,int,int) ;
 int av_log (TYPE_13__*,int ,char*) ;
 int av_malloc (int) ;
 int dump_video_param (TYPE_13__*,TYPE_12__*,int **) ;
 TYPE_14__* ff_add_cpb_side_data (TYPE_13__*) ;
 int ff_qsv_print_error (TYPE_13__*,int,char*) ;
 int memcpy (int,int *,int) ;
 int memset (int,int ,int) ;

__attribute__((used)) static int qsv_retrieve_enc_params(AVCodecContext *avctx, QSVEncContext *q)
{
    AVCPBProperties *cpb_props;

    uint8_t sps_buf[128];
    uint8_t pps_buf[128];

    mfxExtCodingOptionSPSPPS extradata = {
        .Header.BufferId = MFX_EXTBUFF_CODING_OPTION_SPSPPS,
        .Header.BufferSz = sizeof(extradata),
        .SPSBuffer = sps_buf, .SPSBufSize = sizeof(sps_buf),
        .PPSBuffer = pps_buf, .PPSBufSize = sizeof(pps_buf)
    };

    mfxExtCodingOption co = {
        .Header.BufferId = MFX_EXTBUFF_CODING_OPTION,
        .Header.BufferSz = sizeof(co),
    };
    mfxExtBuffer *ext_buffers[2 + QSV_HAVE_CO2 + QSV_HAVE_CO3 + QSV_HAVE_CO_VPS];

    int need_pps = avctx->codec_id != AV_CODEC_ID_MPEG2VIDEO;
    int ret, ext_buf_num = 0, extradata_offset = 0;

    ext_buffers[ext_buf_num++] = (mfxExtBuffer*)&extradata;
    ext_buffers[ext_buf_num++] = (mfxExtBuffer*)&co;
    q->param.ExtParam = ext_buffers;
    q->param.NumExtParam = ext_buf_num;

    ret = MFXVideoENCODE_GetVideoParam(q->session, &q->param);
    if (ret < 0)
        return ff_qsv_print_error(avctx, ret,
                                  "Error calling GetVideoParam");

    q->packet_size = q->param.mfx.BufferSizeInKB * q->param.mfx.BRCParamMultiplier * 1000;

    if (!extradata.SPSBufSize || (need_pps && !extradata.PPSBufSize)



    ) {
        av_log(avctx, AV_LOG_ERROR, "No extradata returned from libmfx.\n");
        return AVERROR_UNKNOWN;
    }

    avctx->extradata_size = extradata.SPSBufSize + need_pps * extradata.PPSBufSize;




    avctx->extradata = av_malloc(avctx->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!avctx->extradata)
        return AVERROR(ENOMEM);
    memcpy(avctx->extradata + extradata_offset, sps_buf, extradata.SPSBufSize);
    extradata_offset += extradata.SPSBufSize;
    if (need_pps) {
        memcpy(avctx->extradata + extradata_offset, pps_buf, extradata.PPSBufSize);
        extradata_offset += extradata.PPSBufSize;
    }
    memset(avctx->extradata + avctx->extradata_size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    cpb_props = ff_add_cpb_side_data(avctx);
    if (!cpb_props)
        return AVERROR(ENOMEM);
    cpb_props->max_bitrate = avctx->rc_max_rate;
    cpb_props->min_bitrate = avctx->rc_min_rate;
    cpb_props->avg_bitrate = avctx->bit_rate;
    cpb_props->buffer_size = avctx->rc_buffer_size;

    dump_video_param(avctx, q, ext_buffers + 1);

    return 0;
}
