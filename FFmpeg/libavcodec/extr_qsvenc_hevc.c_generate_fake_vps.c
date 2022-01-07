
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vps_rbsp_buf ;
typedef int vps_buf ;
typedef int uint8_t ;
struct TYPE_21__ {int extradata_size; int * extradata; } ;
struct TYPE_20__ {int size; int data; int * member_0; } ;
struct TYPE_19__ {int * rbsp_buffer; int rbsp_buffer_alloc_size; int * member_0; } ;
struct TYPE_16__ {scalar_t__ vui_num_ticks_poc_diff_one_minus1; int vui_poc_proportional_to_timing_flag; int vui_time_scale; int vui_num_units_in_tick; int vui_timing_info_present_flag; } ;
struct TYPE_18__ {int vps_id; TYPE_2__ vui; TYPE_1__* temporal_layer; int ptl; int temporal_id_nesting_flag; int max_sub_layers; int member_0; } ;
struct TYPE_17__ {int vps_max_layers; int vps_sub_layer_ordering_info_present_flag; int vps_num_layer_sets; scalar_t__ vps_num_hrd_parameters; scalar_t__ vps_num_ticks_poc_diff_one; int vps_poc_proportional_to_timing_flag; int vps_time_scale; int vps_num_units_in_tick; int vps_timing_info_present_flag; int * vps_max_latency_increase; int * vps_num_reorder_pics; int * vps_max_dec_pic_buffering; int ptl; int vps_temporal_id_nesting_flag; int vps_max_sub_layers; int member_0; } ;
struct TYPE_15__ {int max_latency_increase; int num_reorder_pics; int max_dec_pic_buffering; } ;
typedef int QSVEncContext ;
typedef int PutByteContext ;
typedef TYPE_3__ HEVCVPS ;
typedef TYPE_4__ HEVCSPS ;
typedef TYPE_5__ H2645RBSP ;
typedef TYPE_6__ H2645NAL ;
typedef int GetByteContext ;
typedef int GetBitContext ;
typedef TYPE_7__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_UNKNOWN ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int HEVC_MAX_SUB_LAYERS ;
 int HEVC_NAL_SPS ;
 int HEVC_NAL_VPS ;
 int av_fast_padded_malloc (int **,int *,int) ;
 int av_freep (int **) ;
 int av_log (TYPE_7__*,int ,char*,...) ;
 int * av_mallocz (int) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_init (int *,int *,int) ;
 int bytestream2_init_writer (int *,int *,int) ;
 int bytestream2_peek_be24 (int *) ;
 int bytestream2_put_be24 (int *,int) ;
 int bytestream2_put_be32 (int *,int) ;
 int bytestream2_put_byte (int *,int) ;
 int bytestream2_skip (int *,int) ;
 int bytestream2_tell_p (int *) ;
 int ff_h2645_extract_rbsp (int *,int,TYPE_5__*,TYPE_6__*,int) ;
 int ff_hevc_encode_nal_vps (TYPE_3__*,int ,int *,int) ;
 int ff_hevc_parse_sps (TYPE_4__*,int *,unsigned int*,int ,int *,TYPE_7__*) ;
 int get_bits (int *,int) ;
 int init_get_bits8 (int *,int ,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int generate_fake_vps(QSVEncContext *q, AVCodecContext *avctx)
{
    GetByteContext gbc;
    PutByteContext pbc;

    GetBitContext gb;
    H2645RBSP sps_rbsp = { ((void*)0) };
    H2645NAL sps_nal = { ((void*)0) };
    HEVCSPS sps = { 0 };
    HEVCVPS vps = { 0 };
    uint8_t vps_buf[128], vps_rbsp_buf[128];
    uint8_t *new_extradata;
    unsigned int sps_id;
    int ret, i, type, vps_size;

    if (!avctx->extradata_size) {
        av_log(avctx, AV_LOG_ERROR, "No extradata returned from libmfx\n");
        return AVERROR_UNKNOWN;
    }

    av_fast_padded_malloc(&sps_rbsp.rbsp_buffer, &sps_rbsp.rbsp_buffer_alloc_size, avctx->extradata_size);
    if (!sps_rbsp.rbsp_buffer)
        return AVERROR(ENOMEM);


    ret = ff_h2645_extract_rbsp(avctx->extradata + 4, avctx->extradata_size - 4, &sps_rbsp, &sps_nal, 1);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Error unescaping the SPS buffer\n");
        return ret;
    }

    ret = init_get_bits8(&gb, sps_nal.data, sps_nal.size);
    if (ret < 0) {
        av_freep(&sps_rbsp.rbsp_buffer);
        return ret;
    }

    get_bits(&gb, 1);
    type = get_bits(&gb, 6);
    if (type != HEVC_NAL_SPS) {
        av_log(avctx, AV_LOG_ERROR, "Unexpected NAL type in the extradata: %d\n",
               type);
        av_freep(&sps_rbsp.rbsp_buffer);
        return AVERROR_INVALIDDATA;
    }
    get_bits(&gb, 9);

    ret = ff_hevc_parse_sps(&sps, &gb, &sps_id, 0, ((void*)0), avctx);
    av_freep(&sps_rbsp.rbsp_buffer);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Error parsing the SPS\n");
        return ret;
    }


    vps.vps_max_layers = 1;
    vps.vps_max_sub_layers = sps.max_sub_layers;
    vps.vps_temporal_id_nesting_flag = sps.temporal_id_nesting_flag;
    memcpy(&vps.ptl, &sps.ptl, sizeof(vps.ptl));
    vps.vps_sub_layer_ordering_info_present_flag = 1;
    for (i = 0; i < HEVC_MAX_SUB_LAYERS; i++) {
        vps.vps_max_dec_pic_buffering[i] = sps.temporal_layer[i].max_dec_pic_buffering;
        vps.vps_num_reorder_pics[i] = sps.temporal_layer[i].num_reorder_pics;
        vps.vps_max_latency_increase[i] = sps.temporal_layer[i].max_latency_increase;
    }

    vps.vps_num_layer_sets = 1;
    vps.vps_timing_info_present_flag = sps.vui.vui_timing_info_present_flag;
    vps.vps_num_units_in_tick = sps.vui.vui_num_units_in_tick;
    vps.vps_time_scale = sps.vui.vui_time_scale;
    vps.vps_poc_proportional_to_timing_flag = sps.vui.vui_poc_proportional_to_timing_flag;
    vps.vps_num_ticks_poc_diff_one = sps.vui.vui_num_ticks_poc_diff_one_minus1 + 1;
    vps.vps_num_hrd_parameters = 0;


    ret = ff_hevc_encode_nal_vps(&vps, sps.vps_id, vps_rbsp_buf, sizeof(vps_rbsp_buf));
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Error writing the VPS\n");
        return ret;
    }


    bytestream2_init(&gbc, vps_rbsp_buf, ret);
    bytestream2_init_writer(&pbc, vps_buf, sizeof(vps_buf));

    bytestream2_put_be32(&pbc, 1);
    bytestream2_put_byte(&pbc, HEVC_NAL_VPS << 1);
    bytestream2_put_byte(&pbc, 1);

    while (bytestream2_get_bytes_left(&gbc)) {
        if (bytestream2_get_bytes_left(&gbc) >= 3 && bytestream2_peek_be24(&gbc) <= 3) {
            bytestream2_put_be24(&pbc, 3);
            bytestream2_skip(&gbc, 2);
        } else
            bytestream2_put_byte(&pbc, bytestream2_get_byte(&gbc));
    }

    vps_size = bytestream2_tell_p(&pbc);
    new_extradata = av_mallocz(vps_size + avctx->extradata_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!new_extradata)
        return AVERROR(ENOMEM);
    memcpy(new_extradata, vps_buf, vps_size);
    memcpy(new_extradata + vps_size, avctx->extradata, avctx->extradata_size);

    av_freep(&avctx->extradata);
    avctx->extradata = new_extradata;
    avctx->extradata_size += vps_size;

    return 0;
}
